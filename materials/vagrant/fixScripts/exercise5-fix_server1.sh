#!/bin/bash
#generate new pub key and send it to server2

# sudo sed -i '$aStrictHostKeyChecking no' /etc/ssh/ssh_config

#created new key
ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
sudo apt install expect -y
#sent the key to server2 and automate the password input 
/usr/bin/expect -c 'spawn ssh-copy-id -f -i /home/vagrant/.ssh/id_rsa.pub server2; expect; send "vagrant\r"; interact'

####### explain ####### 
#It's not completely working because server1 configuration runs befor server2, and then i can't connect to it as PasswordAuthentication is "no" before it runs.
#server 1 comes up before server2 and can't send the key to it
