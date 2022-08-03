#!/bin/bash
#set password authenication to yes 

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo service sshd restart

####### explain ####### 
#It's not completely working because server1 configuration runs befor server2, and then i can't connect to it as PasswordAuthentication is "no" before it runs.
#server 1 comes up before server2 and can't send the key to it
