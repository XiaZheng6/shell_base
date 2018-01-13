sed -n '/root/'p test.txt 
sed -nr 'o+t' test.txt 
sed -nr '/o+t/' test.txt 
 1011  sed -nr '/o+t/'p test.txt 
 1012  sed -n '2'p test.txt 
 1013  sed -n '2,5'p test.txt 
 1014  sed -n '25,$'p test.txt 
 1015  wc -l test.txt 
 1016  sed -e '1i' -v ;'/bus/'p -n test.txt 
 1017  sed -e '1'p -v ;'/bus/'p -n test.txt 
 1018  sed -n '/bus/'Ip tes
 1019  sed -n '/bus/'Ip test.txt 
 1020  wc -l test.txt 
 1021  sed -i '1,25'd test.txt 
 1022  wc -l test.txt 
 1023  ls
 1024  cp /etc/passwd .
 1025  ls
 1026  sed -r '1,10s/ro+/r/g' passwd 
 1027  head passwd 
 1028  head passwd |sed -r 's/([^:]+):(.*):([^:])/\3:\2:1/'
 1029  tail passwd |sed -r 's/([^:]+):(.*):([^:]+)/\3:\2:1/'
