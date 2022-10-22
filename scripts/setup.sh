#!/bin/bash

# Install the NGINX Web Server

sudo apt update

sudo apt install nginx

# Configure Firewall

sudo ufw app list

sudo ufw allow 'Nginx Full'

sudo ufw status

# Install MySQL

sudo apt install mysql-server

sudo mysql_secure_installation
