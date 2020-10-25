arr=$(find $1 -type f)

echo $arr | grep -won '[[:alnum:]]\+' $arr | uniq
