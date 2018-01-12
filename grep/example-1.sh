mkdir grep
cd grep/
cp /etc/passwd .

grep 'nologin' passwd 
which grep
grep -c 'nologin' passwd 
grep -n 'nologin' passwd 
grep -ni 'nologin' passwd 
grep -vni 'nologin' passwd 
grep -nA2 'root' passwd 
grep -nB2 'root' passwd 
grep -nC2 'root' passwd 
