for i in "$@"
do
	cd $i
	tree . -F --noreport | grep -v /;
done
