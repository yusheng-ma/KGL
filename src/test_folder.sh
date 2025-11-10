#!/bin/bash
dir="${1:-./benchmarks/iscas85}"
keys_="${2:-Default}" 
k="${3:-Default}"

# Function to execute current_script with each .v file found, excluding certain paths
execute_script() {
    local directory=$1
	folder_name=$(basename $directory)
    
    passed_k=false
    
    echo -e "Testing files in directory: $directory \n" 
    echo -e "\nLog file: $log_file \n"
    # Find files ending with .v, excluding specific directories, and execute current_script with each file
    find "$directory" -type f -name "*.bench" ! -name "*_encrypted*" | while read -r file; do        
        echo "Executing ./current_script with file: $file"
        echo " ################################################################################################### " 
        echo " ########################################## testing $file ########################################## " 
        echo " ################################################################################################### " 
        
		
        # if keys was not provided, generate keys for the file
        if [ "$keys_" = "Default" ]; then
            keys_=$(python3 gen_keys_for_file.py ${file}  2>&1) # something wrong here 
            
            n=$(echo "$keys_" | wc -w) # Count the number of words in the string
            log2n=$(echo "l($n)/l(2)" | bc -l | awk '{print int($1+0.999)}') # Calculate ceil(log2(n)) using bc for log and awk for ceil
            k=$(echo "if ($log2n > 2) $log2n else 2" | bc) # Calculate max(2, ceil(log2(n)))
            # ((k=k+1)) # Increment k by 1
            echo " n = $n, log2(n) = $log2n, k = $k"
            passed_k=true
        fi
        
        echo -e " ------------------ Finding key $keys_  ------------------ " 
        echo -e " ------------------ Using k=$k  ------------------ " 
        ./test_bench_file.sh "$file"  --keys="$keys_" --k=$k --rm_gen=false   --max_gates_to_lock=10
        echo "$output"          
        echo -e "Done with $file \n\n\n\n" 
        
        if [ "$passed_k" = true ]; then
            keys_="Default"
            k="Default"
        fi
    done
}
# Execute the script with .v files from the first directory
# execute_script "$dir1"


execute_and_record() {
    local directory=$1
    folder_name=$(basename "$directory")
    
    echo -e "\nTesting files in directory: $directory \n" 
    log_file="./test_runs/${folder_name}____$(date +"%Y-%m-%d   %H-%M").log"
    echo -e "Log file: $log_file \n"
    
    execute_script "$directory" > "$log_file" 2>&1
    echo -e "Done testing files in directory: $directory \n"
}

execute_and_record "$dir"