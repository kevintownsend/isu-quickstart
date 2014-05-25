#!/usr/bin/bash
echo "Welcome to the ISU Computer Majors quickstart guide. We will try to get you
up and running in your current UNIX environment. We also want this to be 
instructive so you can start using some of the bash commands yourself."
#TODO: check for bin man include
if [ ! -d ${HOME}/bin ]; then
    read -p "Do you want to create a bin directory (y/N):" prompt
    if [ $prompt == "y" ]; then
        mkdir ${HOME}/bin
    fi
fi

if [ ! -d ${HOME}/man ]; then
    read -p "Do you want to create a man directory (y/N):" prompt
    if [ $prompt == "y" ]; then
        mkdir ${HOME}/man
    fi
fi
if [ ! -d ${HOME}/include ]; then
    read -p "Do you want to create a include directory (y/N):" prompt
    if [ $prompt == "y" ]; then
        mkdir ${HOME}/include
    fi
fi
if [ ! -d ${HOME}/lib ]; then
    read -p "Do you want to create a lib directory (y/N):" prompt
    if [ $prompt == "y" ]; then
        mkdir ${HOME}/lib
    fi
fi
if [ "! -f ${HOME}/bin/l" -a "! $(command -v l)" ]; then
    echo "#!/usr/bin/bash
ls -l" > ${HOME}/bin/l
fi

if [ ! $(command -v python3) ]; then
#TODO: check for python3
fi
if [ ! $(command -v sshpass) ]; then
#TODO: check for sshpass
fi
if [ ! $(command -v isu_remote) ]; then
#TODO: install isu_remote
fi
