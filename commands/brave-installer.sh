#                                                     ____                        _____           _        _ _           
#                                                     |  _ \                      |_   _|         | |      | | |          
#                                                     | |_) |_ __ __ ___   _____    | |  _ __  ___| |_ __ _| | | ___ _ __ 
#                                                     |  _ <| '__/ _` \ \ / / _ \   | | | '_ \/ __| __/ _` | | |/ _ \ '__|
#                                                     | |_) | | | (_| |\ V /  __/  _| |_| | | \__ \ || (_| | | |  __/ |   
#                                                     |____/|_|  \__,_| \_/ \___| |_____|_| |_|___/\__\__,_|_|_|\___|_|   
                                                                     
                                                                     
# Please note that this script is not associated with Brave Installer. All commands are mirrored from https://brave.com/linux, but this script makes installation simpler.
#                                                                           Created by Jordyn-gif


echo "[Installer] Preparing for installation.."
read -p "[Installer] Which release would you like to install? [normal | beta | nightly] " release

if [[ "$release" == "normal" ]]; then
    echo "[Installer] Please note that any of the following output is from Brave, not this script."
    sudo apt install curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser
    
elif [[ "$release" == "beta" ]]; then
    echo "[Installer] Please note that any of the following output is from Brave, not this script."
    sudo apt install curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
    sudo apt update
    sudo apt install brave-browser-beta
    
elif [[ "$release" == "night" ]]; then
    echo "[Installer] Please note that any of the following output is from Brave, not this script."
    sudo apt install curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
    sudo apt update
    sudo apt install brave-browser-nightly
    
elif [[ "$release" == "nightly" ]]; then
    echo "[Installer] Please note that any of the following output is from Brave, not this script."
    sudo apt install curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
    sudo apt update
    sudo apt install brave-browser-nightly
fi

