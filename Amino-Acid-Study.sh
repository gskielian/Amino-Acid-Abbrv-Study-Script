#!/bin/bash



name=(\
Alanine Arginine Asparagine "Aspartic Acid" Cysteine Glutamine \
"Glutamic Acid" Glycine Histidine Isoleucine Leucine Lysine Methionine \
Phenylalanine Proline Serine Threonine Tryptophan Tyrosine Valine )

three=( Ala Arg Apn Asp Cys Gln Glu Gly His Ile Leu Lys Met Phe Pro Ser Thr Trp \
Tyr Val )

single=( A R N D C Q E G H I L K M F P S T W Y V )

array=( name three single )

while [ 1 ] ; do

x=`echo $(($RANDOM%20))`

l=4
echo ${single[$x]} | figlet
read answer
for i in ${array[*]} ; do
tput cup $l 4 
echo $(eval echo \$"{"$i"["$x"]}") | figlet
l=$(($l+1))
done
read hi

 
clear
done
