#!/bin/bash

#xdg-mime default VortexStudio-handler.desktop x-scheme-handler/vortex-studio
q='"'
pay='"$1"'
home='$HOME'
# Находим папку, где лежит этот скрипт
DIRF="$(cd "$(dirname "$0")" && pwd)"
DIR="$(cd "$(dirname "$0")" && pwd)/Temp"
Test="$(cd "$(dirname "$0")" && pwd)/тест.sh"

echo "
Welcome to VortexInstaller(by_mvm), $USER!
"

echo -n 'Do you need custom Vortex/VortexStudio path?
-----------------------------------------------------
Default:
    ~/GAMES/[your game name]/[your game name].exe 
-----------------------------------------------------
[y/N]: '
read ans

if [[ "$ans" == "y" || "$ans" == "Y" ]]; then
    echo -n "
-----------------------------------------------------
This is how it will look:
    [Your path without '/']/[your game name]/[your game name].exe
-----------------------------------------------------
Paste your custom path for folders: "
    read pth
elif [[ "$ans" == "n" || "$ans" == "N" || "$ans" == "" ]];
then
    pth="$HOME/GAMES"
fi

echo -n "
What do you want to download?
1. Vortex
2. VortexStudio
3. Both
[1(def)/2/3]: "

read opi



echo '
downloading...

====================================================='

case $opi in
    1)

curl -o "$DIR/Vortex.zip" "https://playvortex.io/download/windows"

echo "#!/bin/bash

export WINEPREFIX=$q$pth/Vortex/prefix$q
export PROTONPATH=GE-Proton
umu-run $q$pth/Vortex/Vortex.exe$q $pay

" > $DIRF/Bin/vortex-handler.sh
cp $DIRF/Bin/vortex-handler.sh $HOME/.local/bin

echo "[Desktop Entry]
Type=Application
Name=Vortex
Exec=$HOME/.local/bin/vortex-handler.sh %u
NoDisplay=true
MimeType=x-scheme-handler/vortex;

" > $DIRF/Applications/Vortex-handler.desktop
cp $DIRF/Applications/Vortex-handler.desktop $HOME/.local/share/applications/

unzip -o $DIR/Vortex.zip -d $pth
rm $DIR/Vortex.zip

chmod +x ~/.local/bin/vortex-handler.sh
sleep 0.1   
update-desktop-database ~/.local/share/applications 
xdg-mime default Vortex-handler.desktop x-scheme-handler/vortex  

        ;;


    2) 
        DOWNLOAD_DIR="$(xdg-user-dir DOWNLOAD)"
        STUDIO_FILE="$DOWNLOAD_DIR/VortexStudio-Windows.zip"

        xdg-open "https://playvortex.io/download/studio-windows"

        echo "Waiting for VortexStudio download..."

        while [ ! -f "$STUDIO_FILE" ]; do
            sleep 1
        done

        mv "$STUDIO_FILE" "$DIR/VortexStudio-Windows.zip"

echo "#!/bin/bash

export WINEPREFIX=$q$pth/VortexStudio/prefix$q
export PROTONPATH=GE-Proton
umu-run $q$pth/VortexStudio/VortexStudio.exe$q $pay

" > $DIRF/Bin/vortexstudio-handler.sh
cp $DIRF/Bin/vortexstudio-handler.sh $HOME/.local/bin

echo "[Desktop Entry]
Type=Application
Name=VortexStudio
Exec=$HOME/.local/bin/vortexstudio-handler.sh %u
NoDisplay=true
MimeType=x-scheme-handler/vortexstudio;

" > $DIRF/Applications/VortexStudio-handler.desktop
cp $DIRF/Applications/VortexStudio-handler.desktop $HOME/.local/share/applications/

unzip -o $DIR/VortexStudio-Windows.zip -d $pth
rm $DIR/VortexStudio-Windows.zip

chmod +x ~/.local/bin/vortexstudio-handler.sh
sleep 0.1   
update-desktop-database ~/.local/share/applications 
xdg-mime default VortexStudio-handler.desktop x-scheme-handler/vortex-studio
        ;;
    3)
        curl -o "$DIR/Vortex.zip" "https://playvortex.io/download/windows"

echo "#!/bin/bash

export WINEPREFIX=$q$pth/Vortex/prefix$q
export PROTONPATH=GE-Proton
umu-run $q$pth/Vortex/Vortex.exe$q $pay

" > $DIRF/Bin/vortex-handler.sh
cp $DIRF/Bin/vortex-handler.sh $HOME/.local/bin

echo "[Desktop Entry]
Type=Application
Name=Vortex
Exec=$HOME/.local/bin/vortex-handler.sh %u
NoDisplay=true
MimeType=x-scheme-handler/vortex;

" > $DIRF/Applications/Vortex-handler.desktop
cp $DIRF/Applications/Vortex-handler.desktop $HOME/.local/share/applications/

unzip -o $DIR/Vortex.zip -d $pth
rm $DIR/Vortex.zip

chmod +x ~/.local/bin/vortex-handler.sh
sleep 0.1   
update-desktop-database ~/.local/share/applications 
xdg-mime default Vortex-handler.desktop x-scheme-handler/vortex  


        DOWNLOAD_DIR="$(xdg-user-dir DOWNLOAD)"
        STUDIO_FILE="$DOWNLOAD_DIR/VortexStudio-Windows.zip"

        xdg-open "https://playvortex.io/download/studio-windows"

        echo "Waiting for VortexStudio download..."

        while [ ! -f "$STUDIO_FILE" ]; do
            sleep 1
        done

        mv "$STUDIO_FILE" "$DIR/VortexStudio-Windows.zip"
echo "#!/bin/bash

export WINEPREFIX=$q$pth/VortexStudio/prefix$q
export PROTONPATH=GE-Proton
umu-run $q$pth/VortexStudio/VortexStudio.exe$q $pay

" > $DIRF/Bin/vortexstudio-handler.sh
cp $DIRF/Bin/vortexstudio-handler.sh $HOME/.local/bin

echo "[Desktop Entry]
Type=Application
Name=VortexStudio
Exec=$HOME/.local/bin/vortexstudio-handler.sh %u
NoDisplay=true
MimeType=x-scheme-handler/vortexstudio;

" > $DIRF/Applications/VortexStudio-handler.desktop
cp $DIRF/Applications/VortexStudio-handler.desktop $HOME/.local/share/applications/

unzip -o $DIR/VortexStudio-Windows.zip -d $pth
rm $DIR/VortexStudio-Windows.zip

chmod +x ~/.local/bin/vortexstudio-handler.sh
sleep 0.1   
update-desktop-database ~/.local/share/applications 
xdg-mime default VortexStudio-handler.desktop x-scheme-handler/vortex-studio
        echo ""

        ;;
    *)

curl -o "$DIR/Vortex.zip" "https://playvortex.io/download/windows"

echo "#!/bin/bash

export WINEPREFIX=$q$pth/Vortex/prefix$q
export PROTONPATH=GE-Proton
umu-run $q$pth/Vortex/Vortex.exe$q $pay

" > $DIRF/Bin/vortex-handler.sh
cp $DIRF/Bin/vortex-handler.sh $HOME/.local/bin

echo "[Desktop Entry]
Type=Application
Name=Vortex
Exec=$HOME/.local/bin/vortex-handler.sh %u
NoDisplay=true
MimeType=x-scheme-handler/vortex;

" > $DIRF/Applications/Vortex-handler.desktop
cp $DIRF/Applications/Vortex-handler.desktop $HOME/.local/share/applications/

unzip -o $DIR/Vortex.zip -d $pth
rm $DIR/Vortex.zip

chmod +x ~/.local/bin/vortex-handler.sh
sleep 0.1   
update-desktop-database ~/.local/share/applications 
xdg-mime default Vortex-handler.desktop x-scheme-handler/vortex  
        ;;
esac





echo '
=====================================================
done!'

echo "skibidi 
dobdob" > $Test

echo -n "Wana see my profile [Y/n]? "
read ans

if [[ "$ans" == "y" || "$ans" == "Y" || "$ans" == "" ]]; then
    echo "opening..."
    xdg-open https://playvortex.io/users/4924/profile
else
    echo "no problem"
fi
