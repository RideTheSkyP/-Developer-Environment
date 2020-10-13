rename()
{
	for file in $1
	do
		if [ -z "$1" ]; then
			echo 1;
		else
			mv -- "$file" "${file//a/A}";
			rename $(find A -name "*a*");
		fi	
	done
}
 
for i in "$@"
do
	rename $(find $i -name "*a*");
done
