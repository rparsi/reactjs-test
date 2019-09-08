#reactjs-test
Reactjs project for learning and testing


##Licence
GPL-3.0


#Ubuntu 18.04.3 Setup
##Manual Steps
###Server Configuration: IPv4 settings

Subnet: 192.168.0.0/24

Address: 192.168.0.71

Gateway: 192.168.0.1

DNS: 8.8.8.8

###Server Configuration: Passwordless Sudo
$ sudo EDITOR=vim visudo -f /etc/sudoers.d/default

add this line

%rahi   ALL=(ALL:ALL) NOPASSWD:ALL


###Server Configuration: Git Setup
Make sure ssh keys are copied over and you can use git with github.

.ssh directory must have only user read, write, execute permissions, NOT group or other

.ssh/id_rsa must be only read, write for user

.ssh/id_rsa.pub must be read, write for user; read only for group and other


###Server Configuration: Install Node
Run vm/nodejs/setup.bash


###Project Setup
Run ./setup.bash

Update package.json, set the "homepage" value to "rahi.reactjs-test.com"


###Symlink setup
sudo ln -s /home/rahi/src/reactjs-test/app/build /var/www/html/rahi.reactjs-test.com


##Remaining Steps
Run vm/apache2/setup.bash