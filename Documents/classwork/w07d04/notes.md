Connect to the ip-address from AWS

	ssh ubuntu@'ip-address'

Once connected, go into the root directory and go to the hidden .ssh directory which has all of the keys.

	cd /
	
	cd .ssh/

	cat authorized_keys
	
Generating public/private rsa key pair.

	ssh-keygen -t rsa -b 4096 -C "kaza125125@gmail.com"

Agent pid 

	ssh -i ~/.ssh/DevOpTest.pem ubuntu@13.59.164.254

	eval `ssh-agent`
	
	ssh-add ~/.ssh/Github

Add the Github identity
	
	ssh-add github

ssh-add example.pem

chmod 400 example.pem

ssh-add example.pem

ssh -i example.pem

Get the Github key description
	
	cat Github.pub

cd ~

Download the environment
	
	git clone 'ssh git'


cd 'directory'

Run the provision file

	./provision.sh

npm install

node app.js

setup nginx as a resverse proxy


ubuntu@ip-172-31-33-119
