# RemoteWireguard

# basics
The Projekt is based on the wireguard installation Script "road warrier". 
Thanks to Nyr!
    https://github.com/Nyr/wireguard-install

to get very easily an installation of wireguard you can use Nyrs Script vor example: 

    wget https://git.io/wireguard -O wireguard-install.sh && bash wireguard-install.sh

RemoteWirguard needs a running wireguard, ssh and apache2 with php


# Aims
aim of this (right now - 24.02.22 startig) Projekt is: 
You should be able to easily add or delete a user by using wirguard_adduser or wireguard_deluser. wireguard_userlist should give you an list of all users.

The usage could be like this: 

wireguard_adduser -u USERNAME -p PASSWORD

wireguard_deluser -u USERNAME

wireguard_userlist


