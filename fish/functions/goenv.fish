function goenv
        set workspace $PWD
        if count $argv > /dev/null
                set workspace $argv[1]
        end

        set ws_link ~/w/go/current-workspace
        rm -rf $ws_link
        ln -s $workspace $ws_link
        echo "linking GOPATH to $workspace"
        set -gx GOPATH $ws_link
end
