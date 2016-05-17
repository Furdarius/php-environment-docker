#!/usr/bin/env bash

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
cyan=`tput setaf 6`
bold=`tput bold`
reset=`tput sgr0`

echo "${green}PHP Docker environment initialization...${reset}"

# Create "bin" folder in home dir.
# Use it as storage for aliases
if [ ! -d ~/bin ]; then
	echo "${cyan}Create \"~/bin\" directory${reset}"
	mkdir ~/bin
fi

resources=( 'composer/composer;composer' 'furdarius/npm-hard-docker;npm' 'furdarius/gulp-docker;gulp' 'furdarius/webpack-docker;webpack' 'furdarius/bower-docker;bower')

for i in "${resources[@]}"
do
        arr=(${i//;/ })
        repo=${arr[0]}
        cmd=${arr[1]}

        echo "${cyan}\"${repo}\" image pulling${reset}"
		docker pull ${repo}

		if [ -f ~/bin/${cmd} ]; then
		    echo "${yellow}File \"~/bin/${cmd}\" already exist.${reset}"

		    read -p "Save it as \".bac\" file? (y/n)" -n 1 -r

		    echo ""
		    if [[ $REPLY =~ ^[Yy]$ ]]
			then
			    cp ~/bin/${cmd} ~/bin/${cmd}.bak
			    echo "\"~/bin/${cmd}.bak\" saved"
			fi

			rm -f ~/bin/${cmd}
		fi

		cp scripts/${cmd} ~/bin/${cmd}
		sudo chmod a+x ~/bin/${cmd}
		echo "${cyan}\"~/bin/${cmd}\" created${reset}"
done

echo "${green}PHP environment installation finished. Availible aliases: ${reset}"

for i in "${resources[@]}"
do
        arr=(${i//;/ })
        cmd=${arr[1]}
        echo "- ${cmd}"
done