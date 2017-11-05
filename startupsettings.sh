tput -T xterm setaf 6

echo " This script will initialize/change next settings: "
echo " "
echo " - Changes keyboard layout to finnish "
echo " - Installs updates "
echo " - Installs git "
echo " - Installs puppet "
echo " - Copies h1 module from https://github.com/EmreJM/h1.git "

tput -T xterm sgr0

setxkbmap -layout fi
sudo apt-get update
sudo apt-get install -y git puppet
git clone https://github.com/EmreJM/h1.git 

tput -T xterm setaf 6

echo " Done!"

tput -T xterm sgr0
