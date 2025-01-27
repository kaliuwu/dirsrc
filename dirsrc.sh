#!/bin/bash
echo "left = back | right = go to _ | q = quit"
while true;
do
    clear
    echo "CURRENT PATH: " && pwd   
    ls
    read -n 1 -s  key
    echo
    case $key in
    $'\e')
        read -n 2 -s key
        case $key in
            "[D")
                echo "meow"
                cd ..
                ;;
            "[C")
                read -p "DEST: " dest
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