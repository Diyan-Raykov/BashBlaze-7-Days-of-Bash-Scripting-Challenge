echo "Welcome to the Interactive File and Directory Explorer!"

input="sample"
#read -p "Enter a line of text (Press Enter without text to exit): Hello, this is a sample line." input
until [[ -z "$input" ]]
do
	file *
        #ls -lah
        echo -n "$input" | wc -m
        read -p "Enter a line of text (Press Enter without text to exit): Hello, this is a sample line." input
done;
