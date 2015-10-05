# Vagrant Quick Setup

## Purpose
This repo is an easy way to get a [Vagrant](vagrantup.com) box setup for PHP projects.

## Dependencies
Using this repo requires the following:

* [Vagrant](vagrantup.com)
* [VirtualBox](virtualbox.org)

## Use
** IMPORTANT: Make sure to clone this repository recursively. Submodules must be installed for it to work. **

in the ```provision``` directory will find the following files:

* ```after.sh```
  > This file contains commands that should run after base provisioning is complete. It has a bunch of sane configurations (make sure npm can install global packages, set some git configs, etc.) but feel free to add whatever you might need.

* ```aliases.example```
  > Copy this file to ```aliases``` and modify it accordingly. It should contain any aliases you would like injected into your .bash_aliases file.

* ```Homestead.yaml.example```
  > Copy this file to ```Homestead.yaml```. This file contains configuration information for the site you want to host in this Vagrant box. See the example file and [Laravel's documentation](http://laravel.com/docs/master/homestead) for more information.
  
Once you modify the files in the ```provision``` directory to your satisfaction, run 

  ```
  $ vagrant up
  ```
  
Pretty simple, right?

**NOTE**
Make sure that you modify your ```hosts``` file. To do this, go to ```C:\Windows\System32\drivers\etc``` or ```/etc/hosts```. Open the ```hosts``` file you find in that folder. On windows you may have to open it using a text editor with elevated privileges and using Linux or OSX you will need to ```sudo```. Add an entry at the end with the IP address you specified and the hostname you specified in your ```Homestead.yaml``` file.