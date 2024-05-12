# This .sh script will create the encrypted (using python script) 
# and attempt to decrypt the file using the neos ( linux library for SAT logic .bench solver). 


file="${1:-./benchmarks/iscas85/c17.bench}" 
keys="2 2 2"
max_gates_to_lock=3
iteration_limit=1000
rm_gen=false
k=2 
time=1
for arg in "$@"
do
	case $arg in
		--file=*)
		file="${arg#*=}"
		shift
		;;
		--keys=*)
		keys="${arg#*=}"
		shift
		;;
		--max_gates_to_lock=*)
		max_gates_to_lock="${arg#*=}"
		shift
		;;
		--iteration_limit=*)
		iteration_limit="${arg#*=}"
		shift
		;;
		--rm_gen=*)
		rm_gen="${arg#*=}"
		shift
		;;
		--k=*)
		k="${arg#*=}"
		shift
		;;
	esac
done

if [ ! -f $file ]; then
	echo "File $file does not exist"
	exit 1
fi

python3 main.py --file="${file}" --key_values="${keys}" --k=$k --max_gates_to_lock=$max_gates_to_lock
file_generated="${file%.*}_encrypted.bench"


if grep -q "DFF(" $file_generated; then
	command="./../Tools/neos/bin/neos -d int $file $file_generated $iteration_limit"
	echo -e "\n \n \n $command"
	time $command
	
	command="./../Tools/neos/bin/neos -d int --kc_sweep=2 $file $file_generated $iteration_limit"
	echo -e "\n \n \n $command"
	time $command

	
	command="./../Tools/neos/bin/neos -d bbo $file $file_generated  sa --to=$time"
	echo -e "\n \n \n $command" 
	time $command

	command="./../Tools/neos/bin/neos -d bbo $file $file_generated  hill --to=$time"
	echo -e "\n \n \n $command" 
	time $command

	command="./../Tools/neos/bin/neos -d bbo $file $file_generated  exp --to=$time"
	echo -e "\n \n \n $command" 
	time $command

else
	command="./../Tools/neos/bin/neos -d ex $file $file_generated $iteration_limit"
	echo -e "\n \n \n $command"
	echo "Running the neos solver on the encrypted file ex "
	time $command
	
	command="./../Tools/neos/bin/neos -d bbo $file $file_generated  sa --to=$time"
	echo -e "\n \n \n $command" 
	time $command

	command="./../Tools/neos/bin/neos -d bbo $file $file_generated  hill --to=$time"
	echo -e "\n \n \n $command" 
	time $command

	command="./../Tools/neos/bin/neos -d bbo $file $file_generated  exp --to=$time"
	echo -e "\n \n \n $command" 
	time $command
fi


if [ "$rm_gen" = true ]; then
	rm $file_generated
fi

echo -e "Done \n \n \n \n\n\n"
