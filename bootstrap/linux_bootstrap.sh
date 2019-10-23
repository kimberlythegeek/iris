#!/bin/bash
# Ubuntu linux bootstrap

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


echo -e "\n${RED}##### Starting Linux OS bootstrap #####${NC} \n"

if [[ $(whoami | grep "root") =~ root ]]; then
    SUDO_USER=""
else
    SUDO_USER="sudo"
fi

install_python37 () {
    ${SUDO_USER} add-apt-repository -y ppa:deadsnakes/ppa
    ${SUDO_USER} apt-get update
    ${SUDO_USER} apt-get -y install python3.7
    echo -e "\n${GREEN}  --->  Python version #####${NC}\n"
    python3.7 -V
    echo -e "\n${GREEN}  --->  Python List All Modules #####${NC}\n"
    python3.7 -c "print( help('modules'))"
    echo -e "\n${GREEN}  --->  Python PIP version #####${NC}\n"
    python3.7 -m pip --version
}

echo -e "${GREEN}  --->  apt-get update #####${NC} \n"
${SUDO_USER} apt-get update

# Installing python library dependencies
echo -e "\n${GREEN}  --->  installing/upgrading python3.7-dev #####${NC}\n"
${SUDO_USER} apt-get -y install python3.7-dev


echo -e "\n${GREEN}  --->  installing/updating Python 3.7 #####${NC}\n"
if command -v python3 &>/dev/null; then
    if [[ $(python3 --version | grep "Python 3.7") =~ 3.7 ]]; then
        echo -e "\n${GREEN} --->  Skipping Python 3.7 install. Already installed. ${NC}\n"--version | grep "Python 3.7"
    elif command -v python3.7 &>/dev/null; then
        echo -e "\n${GREEN} ---> Verified for specific python3.7. Skipped install. Already installed. ${NC}\n"
    else
        echo -e "\n${GREEN}  --->  Installing Python 3.7 #####${NC}\n"
        install_python37
    fi
else
    echo -e "\n${GREEN}  --->  Installing Python 3.7 #####${NC}\n"
    install_python37
fi

echo -e "\n${GREEN}  --->  installing/upgrading python3-pip #####${NC}\n"
${SUDO_USER} apt-get -y install python3-pip

echo -e "\n${GREEN}  --->  installing/upgrading pip #####${NC}\n"
if [[ $(python3.7 -m pip --version | grep "pip") =~ pip ]]; then
    echo -e "\n${GREEN} --->  Skipping Python 3.7 PIP install. Already installed. ${NC}\n"
    python3.7 -m pip install --upgrade pip
fi

# Installing library dependencies
echo -e "\n${GREEN}  --->  installing/upgrading git #####${NC}\n"
${SUDO_USER} apt-get -y install git

echo -e "\n${GREEN}  --->  installing/upgrading scrot #####${NC}\n"
${SUDO_USER} apt-get -y install scrot

echo -e "\n${GREEN}  --->  installing/upgrading xsel #####${NC}\n"
${SUDO_USER} apt-get -y install xsel

echo -e "\n${GREEN}  --->  installing/upgrading p7zip-full #####${NC}\n"
${SUDO_USER} apt-get -y install p7zip-full

echo -e "\n${GREEN}  --->  installing/upgrading libopencv-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libopencv-dev

echo -e "\n${GREEN}  --->  installing/upgrading autoconf automake libtool #####${NC}\n"
${SUDO_USER} apt-get -y install autoconf automake libtool

echo -e "\n${GREEN}  --->  installing/upgrading autoconf-archive #####${NC}\n"
${SUDO_USER} apt-get -y install autoconf-archive

echo -e "\n${GREEN}  --->  installing/upgrading pkg-config #####${NC}\n"
${SUDO_USER} apt-get -y install pkg-config

echo -e "\n${GREEN}  --->  installing/upgrading libpng-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libpng-dev

echo -e "\n${GREEN}  --->  installing/upgrading libjpeg8-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libjpeg8-dev

echo -e "\n${GREEN}  --->  installing/upgrading libtiff5-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libtiff5-dev

echo -e "\n${GREEN}  --->  installing/upgrading zlib1g-dev #####${NC}\n"
${SUDO_USER} apt-get -y install zlib1g-dev

echo -e "\n${GREEN}  --->  installing/upgrading libicu-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libicu-dev

echo -e "\n${GREEN}  --->  installing/upgrading libpango1.0-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libpango1.0-dev

echo -e "\n${GREEN}  --->  installing/upgrading  libcairo2-dev #####${NC}\n"
${SUDO_USER} apt-get -y install libcairo2-dev

echo -e "\n${GREEN}  --->  installing/upgrading firefox #####${NC}\n"
${SUDO_USER} apt-get -y install firefox

echo -e "\n${GREEN}  --->  installing/upgrading wmctrl #####${NC}\n"
${SUDO_USER} apt-get -y install wmctrl

echo -e "\n${GREEN}  --->  installing/upgrading xdotool #####${NC}\n"
${SUDO_USER} apt-get -y install xdotool

echo -e "\n${GREEN}  --->  installing/upgrading python3.7-tk #####${NC}\n"
${SUDO_USER} apt-get -y install python3.7-tk


echo -e "\n${GREEN}  --->  installing/upgrading pipenv #####${NC}\n"
if [[ $(python3.7 -m pipenv --version | grep "pipenv") =~ pipenv ]];then
    pip3.7 install --upgrade pipenv
else
    pip3.7 install pipenv
fi

echo -e "\n${GREEN}  --->  installing/upgrading psutil #####${NC}\n"
if [[ $(python3.7 -m pip --list | grep "psutil") =~ psutil ]];then
    python3.7 -m pip install --upgrade psutil
else
    python3.7 -m pip install psutil
fi
