#!/bin/bash

echo -n 'Wnat do you want to delete?
1.Both
2.Vortex
3.VortexStudio
[1(default)/2/3]: '

read ans

pth=$(cat $HOME/.config/uninstall_vortex_path.txt)


case $ans in
    2)
        rm -rf $pth/Vortex
        rm $HOME/.local/share/applications/Vortex-handler.desktop
        ;;

    3)
        rm $HOME/.local/share/applications/VortexStudio-handler.desktop
        rm -rf $pth/VortexStudio
        ;;


    *)
        rm -rf $pth/Vortex
        rm $HOME/.local/share/applications/Vortex-handler.desktop
        rm -rf $pth/VortexStudio
        rm $HOME/.local/share/applications/VortexStudio-handler.desktop
        ;;
esac