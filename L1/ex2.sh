arr=()
for i in "$@"
do
	for word in  $(tree "$i" --noreport -i)
	do
		if [[ ! " ${arr[@]} " =~ " ${word} " ]]; then
    			arr+="$word ";		
		fi
	done
	
	for word in $arr
	do
		printf "%s" "$word " 
		tree -F $i | grep -c -w $word
	done
done
