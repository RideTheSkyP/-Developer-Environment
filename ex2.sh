arr=()
for i in "$@"
do
	for word in  $(tree "$i" --noreport -i)
	do
		arr+=" $word";
	done
	
	declare -A b
	for i in "${arr[@]}"; do b["$i"]=1; done

	for letter in $b
	do
		echo $letter;
	done
done
