#!/bin/bash
mkdir ~/dev

sudo apt-get update
sudo apt-get install git

sudo apt-get install mysql-server
mysql_secure_installation
sudo apt-get install php7.0-mysql

sudo apt-get install apache
sudo apt-get install atom
sudo apt-get install eclipse
sudo apt-get install default-jdk
sudo apt-get install php
sudo apt-get install firefox
