# Project Title :fire:
###### Raspberry-Dropbox-using-Zerotier

# Motivation :heart:
###### To quickly deploy a dropbox for remote penetration testing. Deploying a dropbox becomes fairly easy with this script.

# Description :smiley:
###### This repository contains a bash script for automating the process of configuring a Raspberry Pi running Kali Linux as a dropbox suitable for remote pentesting. This script does the job in an automated way and provides the end user comfort to sit back and relax.

# Screenshots


# Installation

###### 1. First the script named SSH-Server-Autorun-Config.sh is to be run on the Raspberry Pi running Kali Linux
###### The complete details about how to run the script are covered at: https://github.com/Adityachawan97/SSH-Server-Autorun-Config.git

###### 2. Git clone this repository in your kali linux machine build on the Raspberry-Pi
        - Commands for the same are:
          ```
          
          git clone https://github.com/Adityachawan97/Raspberry-Dropbox-using-Zerotier.git
          
          
          ```

###### 3. Give the script zerotier_dropbox_config.sh permissions to execute 
        - Commands for the same are:
          ```
          
          chmod 777 zerotier_dropbox_config.sh
          
          
          ```
      
###### 4. Answer a 'Y' if you have executed the previous script or else answer 'N'

###### 5. Enter your network id when propmpted

###### 6. Navigate to the Zerotier configuration page and authenticate the node to join the network. Come back to the script and press enter at the prompt.

###### 7. Match the network id that shows, with your Zerotier network id.

###### 8. Connect the Raspberry pi on a different network than your laptop and test whether it works for you.

        
