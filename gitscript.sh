echo "completing commits..."

cd ~/work
git st

echo "stage? (y/n)"
read choice

if [ "$choice" = "y" ]
then
	git add .
fi

echo "commit? (y/n)"
read choice

if [ "$choice" = "y" ]
then
	echo "commit message?"
	read message
	git commit -m "$message"
fi

echo "Complete!"