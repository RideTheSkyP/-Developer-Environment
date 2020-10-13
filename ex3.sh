arr=()
declare -A dict

for i in "$@"
do
	for word in  $(tree "$i" --noreport -i)
	do
		if [[ ! " ${arr[@]} " =~ " ${word} " ]]; then
    			arr+="$word ";		
		fi
		
		dict[$arr[@]]=0
		
		for w in $arr
		do	
			if [[ $word = $w ]]; then
				dict[$w]="$((dict[$w] + 1))"
				echo $word $w
			fi	
		done
	done
	
	for letter in "${!dict[@]}"
	do 
		if [[ "${dict[$letter]}" > 0 ]]; then
			echo "$letter - ${dict[$letter]}"; 
		fi
	done
done
