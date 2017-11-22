python main.py
echo "Begin the hack?"
read value
if [ "$value" = "y" ] 
then
	echo "Creating scripts..."
	mkdir payloads
	cd payloads
	touch script1.txt script2.txt script3.txt
	echo "Scripts made, continue?"

	read answer

	if [ "$answer" = "y" ]
	then
		echo "creating template..."
		echo "=> Updating script1.txt..."
		echo "echo 'script1.txt'" >> script1.txt
		echo "=> Updating script2.txt..."
		echo "echo 'script2.txt'" >> script2.txt
		echo "=> Updating script3.txt..."
		echo "echo 'script3.txt'" >> script3.txt
		echo "whoami" >> script3.txt

		echo "templates complete, exec files?"

		read answer

		if [ "$answer" = "y" ]
		then
			chmod 750 script1.txt script2.txt script3.txt
			echo "executing hack..."
			./script1.txt
			./script2.txt
			./script3.txt
			echo " => Stage 1 complete. Restart?"
			read answer
			if [ "$answer" = "y" ]
			then
				echo "removing payloads..."
				cd ..
				rm -rf payloads
				echo "executing init.sh..."
				./init.sh
			fi
		fi
	fi
else
	echo "Ending init..."
fi