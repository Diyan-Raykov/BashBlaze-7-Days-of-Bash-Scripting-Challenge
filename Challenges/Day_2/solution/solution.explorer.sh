echo "Wellcome"

read -p "enter a line of text:" input
until [[ -z "$input" ]]
do
        ls -lah
        echo -n "$input" | wc -m
        #ls -ltra ./
        #read -p "enter a line of text:" input
        read -p "enter a line of text:" input
done;
