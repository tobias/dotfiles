function remove_from_path
  set -l idx 0
  for x in (seq (count $PATH))
    if test "$argv[1]" = "$PATH[$x]"
      set idx $x
    end
  end
  if test $idx -gt 0
    set -e PATH[$idx]
  end
end
