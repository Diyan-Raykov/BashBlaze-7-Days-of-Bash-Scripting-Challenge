echo "Welcome to the Interactive File and Directory Explorer!"
#initial variable value needed so you can go into loop
input="sample"
#until the variabla is not empty do this
until [[ -z "$input" ]]
do
	#list directory
	ls -lah
	#count characters in string
        echo -n "$input" | wc -m
	#read string
        read -p "Enter a line of text (Press Enter without text to exit):" input
done;
