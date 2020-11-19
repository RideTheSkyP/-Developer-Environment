arr=()
for i in $(svn ls -R -r $1 $2 | grep '[^\/]$'); do
	arr+="$2$i "
done
svn cat $arr | tr '[A-Z]' '[a-z]' | tr ' \t' '\n\n'| sed -e "/^$/d" | sort | uniq -c | sort -nr;
