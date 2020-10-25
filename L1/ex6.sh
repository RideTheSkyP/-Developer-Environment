arr=$(find $1 -type f)

grep -won '[[:alnum:]]\+' $arr | sort | uniq -d
