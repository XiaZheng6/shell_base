grep 'r.o' passwd 
grep 'o*o' passwd 
grep '.*' passwd 
grep 'docker.*' passwd 
grep 'o\{2\}' passwd 
grep 'o\{0,3\}' passwd 
egrep 'o{2}' passwd 
grep -E 'o{2}' passwd 
grep -E '(oo){2}' passwd 
grep -E 'o+o' passwd 
grep -E 'o+b' passwd 
grep -E 'o+t' passwd 
grep -E 'o?t' passwd 
grep -E 'b?e' passwd 
grep -E 'ber?n' passwd 
grep -E 'root|login' passwd 
grep -E 'root|nologin' passwd 
grep -E 'root|997' passwd 
grep -Ei 'root|997' passwd
