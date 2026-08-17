echo "Welcome to the Interactive File and Directory Explorer!"

input="sample"
until [[ -z "$input" ]]
do
	ls -lah
        echo -n "$input" | wc -m
        read -p "Enter a line of text (Press Enter without text to exit):" input
done;
