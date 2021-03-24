# lower_limit=0
# upper_limit=10
# read -p "Enter a Number greater than 1: " counter
# if [ -z $counter ];
# then
# counter=upper_limit
# fi
# # echo "$counter, `shuf -i 0-10 -n 1`"
# ((counter--))
# until ((counter < 0)); do
# # echo "$counter, `shuf -i $lower_limit-$upper_limit -n 1`"
# echo "$counter, `od -An -N2 -i /dev/random`"
# ((counter--))
# done > inputFile
FILE=inputFile
lower_limit=0
upper_limit=10
read -p "Enter a Number greater than 1: " counter
if [ -z $counter ];
then
counter=upper_limit
fi
for ((i=0;i<$counter;i++));
do
echo "$i, `od -An -N2 -i /dev/random`" >> $FILE
done
