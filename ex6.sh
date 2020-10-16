for i in "$@"
do
	j=1
	while [ $j -lt 4 ]
	do
		declare -A dict 
		arr=()
		dict[$arr[@]]=0
		for word in $(find $i -maxdepth $j -mindepth $j -exec basename {} ';')
		do
			if [[ ! "${arr[@]}" =~ "${word}" ]]; then
					arr+="$word ";		
			fi
			
			for w in $arr
			do	
				if [[ $word = $w ]]; then
					dict[$w]="$((dict[$w] + 1))"
				fi	
			done
		done
		
		for letter in "${!dict[@]}"
		do 
			if [[ "${dict[$letter]}" > 1 ]]; then
				echo $letter appeared ${dict[$letter]} times;
				find a -mindepth $j -name $letter; 
			fi
		
		done
		j=$[$j+1]
	done
done
