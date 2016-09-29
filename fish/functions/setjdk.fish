function setjdk
   if test -n "$JAVA_HOME"
     removeFromPath "$JAVA_HOME/bin"
   end
   set -gx JAVA_HOME (/usr/libexec/java_home -v $argv[1])
   set -gx PATH $JAVA_HOME/bin $PATH  
end

function removeFromPath
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
