#This script will configure your Raspberry Pi into a Dropbox

#Shebang
#!/bin/bash

#Lets greet the user first
echo "***********************************************************"
echo "RASPBERRY PI DROPBOX USING ZEROTIER"
echo "Let us configure your dropbox"
echo "Sit back and relax, let the script do the job for you"
echo "Starting the script........"
echo "***********************************************************"
echo ""
echo ""
echo "HAVE YOU SUCCESSFULLY RUN THE SSH AUTORUN SCRIPT ALREADY??(Y/N)"
read ANSWER
if [ $ANSWER = "Y" ];
then
    echo ""
    echo ""
    echo "***********************************************************"
	echo "Okay then lets proceed with this dropbox script"
	sudo apt-get update && sudo apt-get upgrade -y
    echo "***********************************************************"
	#downloading the software files from the internet
    echo ""
	echo ""
    echo "***********************************************************"
	curl -s https://install.zerotier.com | sudo bash
    echo "***********************************************************"
	echo ""
	echo ""
	#adding zerotier to startup programs
    echo "***********************************************************"
    echo "Adding zerotier to the list of starttup programs"
    sudo systemctl enable zerotier-one
	#starting a instance for the current boot
	sudo systemctl start zerotier-one
	echo "***********************************************************"
    echo ""
	echo ""
    echo "***********************************************************"
	echo "Your zerotier status is as follows:"
	sudo zerotier-cli status
    echo "***********************************************************"
	echo ""
	echo ""
	echo "***********************************************************"
	echo "This node needs to join a network"
	echo "Enter your Zerotier network id here:"
	read NETWORK_ID
	sudo zerotier-cli join $NETWORK_ID
	echo "***********************************************************"
	echo ""
	echo ""
	echo "***********************************************************"
	echo "Quickly go to your Zerotier network configuration page and authenticate this node on your network"
	echo "The script will now wait for some time till you authenticate this node"
	read -p "Press Enter here when you are done"
	echo "***********************************************************"
	echo ""
    echo ""
	echo "***********************************************************"
	echo "Listing the network that this node is connected to"
	echo "Check whether it is the network that you want this dropbox to connect to"
	sudo zerotier-cli listnetworks
	echo "***********************************************************"
	sudo touch /var/lib/zerotier-one/networks.d/$NETWORK_ID.conf
	echo "YOUR RASPPBERRY PI HAS BEEN CNFIGURED AS A DROPBOX."
	echo "GEAR UP FOR YOUR PENTEST NOW!!"
else
    echo ""
    echo "***********************************************************"
	echo "First run that script. You will find it at:https://github.com/Adityachawan97/SSH-Server.git"
	echo "Terminating this script.Run this script again after you have successfully finished executing SSH Autorun script."
    echo "***********************************************************"
fi

