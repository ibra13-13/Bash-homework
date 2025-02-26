#!/bin/bash

function k-pop() {
	sudo useradd jenny rose lisa jisso
	sudo groupadd blackpink
	sudo gpasswd -M jenny,rose,lisa,jisso blackpink
}

function wordpress() {
	wget https://wordpress.org/latest.tar.gz
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
	sudo yum install tree
	sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
	sudo yum install terraform


	#sudo apt update && sudo apt install -y tree
	#curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
	#sudo tee /etc/apt/sources.list.d/hashicorp.list
	#sudo apt update && sudo apt install -y terraform
}

k-pop
wordpress
calculator
binary

