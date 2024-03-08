function menu(){
    clear
    echo "Install i3"
    echo "[+] I3 WM [+]"
    echo "1 Arch Linux"
    echo ""
    echo "2 Debian / Ubuntu"
    echo ""
    echo "By redghost"
    echo ""
    read -p "Select: " opt

    if [ "$opt" = "1" ]; then
        arch
    elif [ "$opt" = "2" ]; then
        debian
    else
        echo "Invalid option or no option selected. Exiting."
        exit 1
    fi
}

function arch(){
    clear
    echo "Install I3"
    sudo pacman -Sy i3
    clear
    sudo pacman -Sy picom feh polybar rofi kitty unzip
    clear
    echo "Config Polybar"
    sleep 2
    echo "recommended option Simple"
    sleep 3
    git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
    sleep 2
    cd polybar-themes
    chmod +x setup.sh
    bash setup.sh
    clear
    unzip polybar.zip
    echo "copying configuration"
    sudo rm -rf ~/.config/i3
    cp -r i3 ~/.config/
    rm -rf ~/.config/kitty
    cp -r kitty ~/.config
    sleep 1
    clear
}

function debian(){
    clear
    echo "Install I3"
    sudo apt install i3
    clear
    sudo apt install picom feh polybar rofi kitty unzip
    clear
    echo "Config Polybar"
    clear
    echo "recommended option Simple"
    sleep 3
    git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
    sleep 2
    cd polybar-themes
    chmod +x setup.sh
    bash setup.sh
    clear
    unzip polybar.zip
    echo "copying configuration"
    cp -r i3 ~/.config/
    rm -rf ~/.config/kitty
    cp -r kitty ~/.config
    sleep 1
    clear
}

menu
