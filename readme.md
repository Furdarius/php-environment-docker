This script create useful aliases for php/js development tools (Composer, npm, gulp).

All processes execute in Docker containers, so your system will not be littered. 

### Installation

* Install docker: [https://docs.docker.com/engine/installation/linux/ubuntulinux/](https://docs.docker.com/engine/installation/linux/ubuntulinux/)
* Clone repo: `git clone git@github.com:Furdarius/php-environment-docker.git php-env-installation`
* Open folder: `cd php-env-installation`
* Permissions: `chmod 0774 init.sh`
* Start it: `./init.sh`

### What will i get?

Isolated in docker containers environment for building php-project with fully configured cache for package managers

Commands you'll be availble to use:

* composer (install, update, etc..)
* npm (install, update, etc..)
* gulp