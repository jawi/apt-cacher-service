apt-cacher-service
==================

Run apt-cacher in CoreOS/Docker

Run on local machine
-------------------

* Install Docker
* Clone this repository
* Run `./apt-cacher-service run`
* Check http://localhost:3142


Run in Vagrant
--------------
* Install Vagrant & VirtualBox
* Clone this repository
* Configure discovery in coreos-userdata (optional)
* Run `vagrant up`
* Check http://172.17.8.200:3142


