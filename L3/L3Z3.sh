arr=()
for i in $(svn ls -R -r $1 $2 | grep '[^\/]$'); do
	arr+="$2$i "
done

for FILE in $arr; do
	svn cat $FILE | tr '[A-Z]' '[a-z]' | tr ' \t' '\n\n'| sed -e "/^$/d" | sort | uniq ;
done | sort | uniq -c | sort -nr
