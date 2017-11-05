tput -T xterm setaf 6

echo " This script will initialize/change next settings: "
echo " "
echo " - Changes keyboard layout to finnish "
echo " - Installs updates "
echo " - Installs git "
echo " - Installs puppet "
echo " - Copies h1 module from https://github.com/EmreJM/h1.git "
echo " - Moves module to where it should be which is /etc/puppet/modules "
echo " - Applies the h1 module (which just installs ssh currently)"

tput -T xterm sgr0

setxkbmap -layout fi
sudo apt-get update
sudo apt-get install -y git puppet
git clone https://github.com/EmreJM/h1.git
cd h1
sudo mv sshnova /etc/puppet/modules/
cd
sudo puppet apply -e 'class {"sshnova":}'

tput -T xterm setaf 6

echo " Done!"

tput -T xterm sgr0
