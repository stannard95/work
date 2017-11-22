if [ ! -d "logs" ];then
	echo "creating log directory..."
	mkdir "logs"
	cd "logs"
	echo "enter?"
	read choice

	if [ "$choice" = "yes" ] ;then
		sleep 5
		echo "yeah"
	fi
fi