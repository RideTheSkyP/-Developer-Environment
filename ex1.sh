for i in "$@"
do
	tree "$i" -F | grep -v /;
done
