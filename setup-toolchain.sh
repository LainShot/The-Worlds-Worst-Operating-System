if [ "$EUID" -ne 0 ]
  then 
  echo " __    _____ _     _____ _       _____ "
  echo "|  |  |  _  |_|___|   __| |_ ___|_   _|"
  echo "|  |__|     | |   |__   |   | . | | |  "
  echo "|_____|__|__|_|_|_|_____|_|_|___| |_|  "
  echo "                                       "
  echo "======================================="
  echo "You need to run this as root or sudo."
  exit
fi
echo " __    _____ _     _____ _       _____ "
echo "|  |  |  _  |_|___|   __| |_ ___|_   _|"
echo "|  |__|     | |   |__   |   | . | | |  "
echo "|_____|__|__|_|_|_|_____|_|_|___| |_|  "
echo "                                       "
echo "======================================="
echo "TOOL CHAIN SETUP SCRIPT"
echo "======================================="
echo "Installing software needed"
apt-get install -y nasm
apt-get install -y xorriso
apt-get install -y grub-pc-bin
apt-get install -y grub-common
apt-get install -y wget
apt-get install -y unzip
echo "All software installed"
echo "I am now going setup the toolchain."
wget https://github.com/lordmilko/i686-elf-tools/releases/download/7.1.0/x86_64-elf-tools-linux.zip
echo "creating toolchain folder "
mkdir toolchain
echo "unziping toolchain into folder"
unzip x86_64-elf-tools-linux -d ./toolchain
echo "All installed you can now run make build-x86_64"

