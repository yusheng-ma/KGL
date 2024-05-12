
file="${1:-./benchmarks/iscas85/c3540.bench}" 
keys="2 3 1"
max_gates_to_lock=3
iteration_limit=1000
rm_gen=false
k=2 
time=1

conda deactivate # Make sure we are using the default python
python3 main.py --file="${file}" --key_values="${keys}" --k=$k --max_gates_to_lock=$max_gates_to_lock
file_generated="${file%.*}_encrypted.bench"
# We nee to get ride of spaces between INPUT( input_name ) and OUTPUT( output_name )

    # parser.add_argument("-p", action="store", default=0, type=int, help="print info=1 and debug=2, default warning=0")
    # parser.add_argument("-b", action="store", required=True, type=str, help="original benchmark path")
    # parser.add_argument("-o", action="store", required=True, type=str, help="obfuscated benchmark path")
    # parser.add_argument("-t", action="store", default=7200, type=int, help="timeout in seconds, default=7200")
    # parser.add_argument("-s", action="store", required=False, type=str, help="solver: btor, msat, z3, yices, picosat, cvc4")

python3 ./../Tools/RANE/main_sat.py -b $file -o $file_generated -s="z3" -p=2 -t=72000