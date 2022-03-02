# wireguard_user

# Basics
The Projekt is based on the wireguard installation Script "road warrier". 
Thanks to Nyr!
    https://github.com/Nyr/wireguard-install

to get very easily an installation of wireguard you can use Nyrs Script vor example: 

    wget https://git.io/wireguard -O wireguard-install.sh && bash wireguard-install.sh

RemoteWirguard needs a running wireguard, ssh and apache2 with php


# Description
Aim of this Projekt is: You should be able to easily add or delete a user by using wirguard_user --add or wireguard_user --del. wireguard_user --list should give you an list of all users.

## optput wireguard_user --list: 

Usage: wireguard_user -o --option

        options:[ -u | --user ]
                [ -d | --del  ]
                [ -a | --add  ]
                [ -l | --list ]
                [ -h | --help ]

        examples: wireguard_user -u MyUserName -a
                        -> creates a user 
                        -> output: user.config file

                 wireguard_user -u MyUserName -d
                        -> deletes a user 
                        -> output: "user xyz deletet" or "user xyz not found"

                 wirguard_user -l
                        -> output: list of all users

[ToDo: order of args ]

## wireguard-user systemwide
Just copy the script to the sbin directory:

	cp /pathToWireguard_user/wireguard_user /sbin/
	chmod a+x /sbin/wireguard_user

# wireguard_user per remote ssh

## ssh environment
If you want to create or delete wirguard users remotly form another machine, first push the ssh token to the wiregurad-machine. 
Open a Terminal in the remote-machine and execute:

		ssh-keygen -t rsa -b 4096
		ssh-copy-id -i ~/.ssh/id_rsa.pub root@wireguard

## usage remotely
See *user wireguard-user easily* chapter to install wireguard_user in your system as a typical command:
Now the following commands can be used from a terminal in your 


		ssh wireguard -l root -t "wireguard_user -l"
		ssh wireguard -l root -t "wireguard_user -u test -a"
		ssh wireguard -l root -t "wireguard_user -u test -a" >> test-user.conf
		ssh wireguard -l root -t "wireguard_user -u test -d"
		
