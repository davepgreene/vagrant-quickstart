# Vagrant Quick Setup

## Purpose
This repo is an easy way to get a [Vagrant](vagrantup.com) box setup for PHP projects.

## Dependencies
Using this repo requires the following:

* [Vagrant](vagrantup.com)
* [VirtualBox](virtualbox.org)
* [PHP 5.6](http://windows.php.net/download/)
* [Composer](https://getcomposer.org/)

## Use
in the ```provision``` directory will find the following files:

* ```after.sh```
  > This file contains commands that should run after base provisioning is complete. It has a bunch of sane configurations (make sure npm can install global packages, set some git configs, etc.) but feel free to add whatever you might need.

* ```aliases.example```
  > Copy this file to ```aliases``` and modify it accordingly. It should contain any aliases you would like injected into your .bash_aliases file.

* ```Homestead.yaml.example```
  > Copy this file to ```Homestead.yaml```. This file contains configuration information for the site you want to host in this Vagrant box. See the example file and [Laravel's documentation](http://laravel.com/docs/master/homestead) for more information.
  
Once you modify the files in the ```provision``` directory to your satisfaction, run 

  ```
  $ composer install
  ```
  
from the root directory of the project. This will download the homestead scripts.

After that, just run

  ```
  $ vagrant up
  ```
  
Pretty simple, right?

**NOTE**
Make sure that you modify your ```hosts``` file. To do this, go to ```C:\Windows\System32\drivers\etc```. Open the ```hosts``` file you find in that folder. You may have to open it using a text editor with elevated privileges. Add an entry at the end with the IP address you specified and the hostname you specified in your ```Homestead.yaml``` file.