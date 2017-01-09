function setjdk
   if test -n "$JAVA_HOME"
     remove_from_path "$JAVA_HOME/bin"
   end
   set -gx JAVA_HOME (/usr/libexec/java_home -v $argv[1])
   set -gx PATH $JAVA_HOME/bin $PATH  
end

