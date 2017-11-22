# Devops week 7 day 3
-

# Continuous integeration

* Code pushed to github
* Automated testing to check code
* If successful, continue or report fault

# Continuous delivery

Feature has been completed and has passed acceptence criteria

# Continous deplopment

All tests have been passed and is ready to be pushed live

-




# Provisioning lesson
-

Today:

* How to provison
* Bash scripts to do this
* Testing

-

	sudo app-get update
Updates the packages that are to be installed.

	sudo apt-get upgrade
	
Checks to see if there are new versions of the packages, if so, update to them.


Run provision on host machine with vagrant

	vagrant provision

Run tests
	
	rake spec




end to end testing

vagrant destroy -f && vagrant up



Principle of least privllege






sudo adduser app

sudo deluser app

sudo adduser --disabled-password app


push from dev to git


