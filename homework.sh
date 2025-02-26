#!/bin/bash

function k-pop() {
	sudo useradd -m jenny
	sudo useradd -m rose
	sudo useradd -m lisa
	sudo useradd -m jisoo
	sudo groupadd blackpink
	sudo gpasswd -M jenny,rose,lisa,jisoo blackpink
}

function wordpress() {
	sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y 
       	sudo systemctl restart httpd
	wget https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	sudo chown ec2-user  wordpress/*
	sudo chmod 755 wordpress/*
	sudo mv wordpress/* /var/www/html
	sudo rm -r /var/www/html/index.html
}

function calculator() {
	local a=12
    	local b=4

    	echo "Addition: $((a + b))"
    	echo "Subtraction: $((a - b))"
    	echo "Multiplication: $((a * b))"
    	echo "Division: $((a / b))"  
}

function binary() {
	sudo yum install tree -y
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum install terraform -y
}

k-pop
wordpress
calculator
binary

