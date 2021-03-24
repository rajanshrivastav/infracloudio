lower_limit=0
upper_limit=10
read -p "Enter a Number great than 1: " counter
echo "$counter, `shuf -i 0-10 -n 1`"
((counter--))
until ((counter < 0)); do
echo "$counter, `shuf -i $lower_limit-$upper_limit -n 1`"
((counter--))
done > inputFile