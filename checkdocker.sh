#!/bin/bash
if [[ $(which docker) && $(docker --version) ]];
then docker --version;
	echo "docker is avaialable";
else	echo "Docker is not available"
echo "Do you want to install docker(y/n)"
read a
case $a in "y") ./dockerinstaller.sh
		break
		;;
	"n") echo "skipped docker installation."
	;;
esac
fi

if [[ $(docker-compose --version) ]];
then docker-compose --version;
	echo "Docker-compose is available";
else
	echo "Docker-compose is not available.";
echo "Do you want to install docker-compose(y/n)"
read b
case $b in "y") ./dockercomposeinstall.sh
		break;;
	"n") echo "skipped docker-compose installation."
	;;
esac
fi
