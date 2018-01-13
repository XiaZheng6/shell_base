awk -F ':' '$3<$4' test.txt 
awk -F ':' '$3=$4' test.txt 
awk -F ':' '$3<$4' test.txt 
awk -F ':' '$3>"5"&&$3<"7"' test.txt 
