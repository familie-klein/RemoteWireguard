# wireguad_user

# Basics
The Projekt is based on the wireguard installation Script "road warrier". 
Thanks to Nyr!
    https://github.com/Nyr/wireguard-install

to get very easily an installation of wireguard you can use Nyrs Script vor example: 

    wget https://git.io/wireguard -O wireguard-install.sh && bash wireguard-install.sh

RemoteWirguard needs a running wireguard, ssh and apache2 with php


# Aims
aim of this (right now - 24.02.22 startig) Projekt is: 
You should be able to easily add or delete a user by using wirguard_adduser or wireguard_deluser. wireguard_userlist should give you an list of all users.


Usage: wireguard_user -o --option

        options:[ -u | --user ]
                [ -d | --del  ]
                [ -a | --add  ]
                [ -l | --list ]
                [ -h | --help ]

        examples: wireguard_user -u MyUserName -a
                        -> creates a user 
                        -> output: user.config file

                 wireguard_user -u MyUserName -a
                        -> deletes a user 
                        -> output: "user xyz deletet" or "user xyz not found"

                 wirguard_user -l
                        -> output: list of all users


# wiregurad user per remote

		ssh wireguard -l root -t "wireguard_user -l"
		ssh wireguard -l root -t "wireguard_user -u test6 -a"
		ssh wireguard -l root -t "wireguard_user -u test6 -d" >> test6-user.conf
		ssh wireguard -l root -t "wireguard_user -u test6 -d"
		
