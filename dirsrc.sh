#!/bin/bash
while true;
do
    clear  
    echo "left = back | right = go to | q = quit"
    echo "PATH: $(pwd)"
    tree -d -L 1
    read -n 1 -s  key
    echo
    case $key in
    $'\e')
        read -n 2 -s key
        case $key in
            "[D")
                cd ..
                ;;
            "[C")

                deststr=$(tree -d -L 1 | fzf --bind 'right:accept' )
                dest="${deststr#* }"
                cd $dest
            esac
    ;;
    "q")
    break
    ;;
    *)
    echo $key
    ;;
    esac
done
$SHELL
