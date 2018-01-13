awk -F ':' '{print $1}' test.txt 
awk '{print $0}' test.txt 
awk -F ':' '{print $1,$3,$4}' test.txt 
awk -F ':' '{print $1"#"$3"#"$4}' test.txt 
awk '/oo/' test.txt 
awk -F ':' '$1 ~ /oo/' test.txt 
awk -F ':' '$1 ~ /oo+/' test.txt 
awk -F ':' '/root/ {print $1,$3} /user/ {print $1,$3,$4}' test.txt 
awk -F ':' '$3>=100 {print $0}' test.txt 
awk -F ':' '$7!="/sbin/nologin" {print $0}' test.txt 
