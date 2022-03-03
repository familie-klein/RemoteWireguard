# wireguard_user

# Basics
The Projekt is based on the wireguard installation Script "road warrier". 
Thanks to [Nyr](https://github.com/Nyr/wireguard-install)!

To get very easily an installation of wireguard you can use Nyr's script: 

    wget https://git.io/wireguard -O wireguard-install.sh && bash wireguard-install.sh



# Description

wireguard_user needs a running wireguard!

You can easily add or delete a user by using 

	wirguard_user --add -u Username
	wireguard_user --del -u Username
	
`wireguard_user --list` gives you an list of all users.

##  Usage 

wireguard_user --options: 

	[ -u | --user  ]
		[ -d | --del   ]
		[ -a | --add   ]
		[ -c | --check ]
		
	[ -l | --list  ]
	[ -e | --erase ]
	[ -h | --help  ]


## Examples 

Creates a user, the output is the user.config file:

		wireguard_user -u UserName -a

Deletes a user, the output is: "user xyz deleted" or "user xyz not found":

		wireguard_user -u UserName -d

Check: does the user exists?
        
		wireguard_user -u UserName -c

List of all VPN users:

		wireguard_user -l
		
Deletes all users in wireguard:


		wireguard_user -e

### Crazy examples

		wireguard_user -u test -a | tee test-user.conf | qrencode -t UTF8

Creates a new user, puts the config file in your path and shows it as an QRcode.


## wireguard-user systemwide

You want to user wireguard_user systemwide? 

Just copy the script to the sbin directory:

	cp /pathToWireguard_user/wireguard_user /sbin/
	chmod a+x /sbin/wireguard_user

# wireguard_user remote with ssh

## ssh environment
If you want to create or delete wirguard users remotly form another machine, first push the ssh token to the wireguard-machine ( folowings named *wireguard*). 
Open a Terminal in the remote-machine and execute:

		ssh-keygen -t rsa -b 4096
		ssh-copy-id -i ~/.ssh/id_rsa.pub root@wireguard

## usage remotely
Now the following commands can be used from a terminal in your other machine


		ssh wireguard -q -l root -t "wireguard_user -l"
		ssh wireguard -q -l root -t "wireguard_user -u test -a"
		ssh wireguard -q -l root -t "wireguard_user -u test -a" >> test-user.conf
		ssh wireguard -q -l root -t "wireguard_user -u test -a" | tee test-user.conf > qrencode -t UTF8
		ssh wireguard -q -l root -t "wireguard_user -u test -d"
		
