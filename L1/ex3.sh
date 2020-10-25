for i in "$@"
do
	cd $i;
	for FILE in $(find . -maxdepth 64 -type f);
	do
		cat $FILE| tr '[A-Z]' '[a-z]' |tr ' \t' '\n\n'|sed -e "/^$/d" |sort |uniq ;
	done | sort | uniq -c | sort -nr
done
