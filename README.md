apt-cacher-service
==================

Run [Apt Cacher Server](https://help.ubuntu.com/community/Apt-Cacher-Server) as
a CoreOS/Docker service. This allows one to shorten the download times for
Apt-based distributions (such as Ubuntu) by providing a local cache for its
packages.

Run on local machine using Docker
---------------------------------
* [Install Docker](https://docs.docker.com/installation/);
* Clone this repository: `git clone ru://github.com/INAETICS/apt-cacher-service.git`;
* Build the image by running: `./apt-cacher-service build`;
* Start the image by running `./apt-cacher-service start`;
* Verify that the service is up and running by going to "http://localhost:3142", or check the output of "docker ps" and "docker logs".

Run in Vagrant
--------------
* Install Vagrant & VirtualBox
* Clone this repository
* Configure discovery in coreos-userdata (optional)
* Run `vagrant up`
* Check `http://172.17.8.200:3142`

