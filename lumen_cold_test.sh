NONE='\033[00m'
GREEN='\033[01;32m'

echo -e "${GREEN}Installing swapfile ${NONE}";

sudo fallocate -l 3000M /mnt/3000MB.swap
sudo dd if=/dev/zero of=/mnt/3000MB.swap bs=1024 count=3072000
sudo mkswap /mnt/3000MB.swap
sudo swapon /mnt/3000MB.swap
sudo chmod 600 /mnt/3000MB.swap
sudo echo '/mnt/3000MB.swap none swap sw 0 0' >> /etc/fstab

echo -e "${GREEN}Swapfile installed.${NONE}";

echo -e "${GREEN}Installing dependencies ${NONE}";

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install git -y
sudo apt-get install nano -y
sudo apt-get install curl -y
sudo apt-get install pwgen -y
sudo apt-get install wget -y
sudo apt-get install build-essential libtool automake autoconf -y
sudo apt-get install autotools-dev autoconf pkg-config libssl-dev -y
sudo apt-get install libgmp3-dev libevent-dev bsdmainutils libboost-all-dev -y
sudo apt-get install libzmq3-dev -y
sudo apt-get install libminiupnpc-dev -y
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update -y
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

echo -e "${GREEN}Dependencies installed.${NONE}";

