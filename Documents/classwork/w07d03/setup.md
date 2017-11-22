# Setup

With the sample directories implmented, set up Vagrant via the terimal.


	vagrant up
	

Now, if there is a environment directory, inside create a provision.

	touch provision.sh
	
This provision file will be used to install all of the necessary software for the virtual machine.


Start the file off with these three lines:

	#!/bin/bash
	
	sudo apt-get update
	sudo apt-get upgrade -y

* 'update' will update the source of the packages that are to be installed.

* 'upgrade' will update the source packages to the latest version avaliable to them.


Now we need to config the spec-test file which is located in the spec-tests directory.

ruby_spec should look like this:

	require 'spec_helper'
	
	describe package('git') do
		it { should be_installed }
	end

Now we need the 'Vagrantfile' to use our provision, include this line:

	config.vm.provision "shell", path: "environment/app/provision.sh"
	
Now it's ready. In the terminal lets run our provision and then test it.

	vagrant provision
	rake spec
	
If the provision runs without error, and tests past. It's saul good.



