This script create useful aliases for php/js development tools. You'll get environment for building PHP projects, isolated in docker containers, so your system will not be littered. You don't need to have PHP or NodeJS on your host machine for running `composer`, and `npm`. Caching fully supported.

Availible tools:

* `composer`
* `npm`
* `gulp`
* `bower`
* `webpack`

### Installation

* Install docker: [https://docs.docker.com/engine/installation/linux/ubuntulinux/](https://docs.docker.com/engine/installation/linux/ubuntulinux/)
* Clone repo: `git clone git@github.com:Furdarius/php-environment-docker.git php-env-installation`
* Open folder: `cd php-env-installation`
* Permissions: `chmod 0774 init.sh`
* Start it: `./init.sh`
* User dockerized php environment with composer, npm, gulp, bower and webpack
