echo "Would you like to copy your directory? (y/n)"

read choice

if [ "$choice" = "y" ]
then
	echo "copying Documents over..."
	cd ..
	cp -R Documents work
	echo "Copying complete, enjoy."
	cd work
fi
