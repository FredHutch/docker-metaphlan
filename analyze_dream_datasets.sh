#!/bin/bash

# This script will analyze a set of datasets

# There are only three things you need to know about this script:
# 1. The list of files to analyze will be found in /share/dream_datasets.txt
# 2. Each line consists of <input_file_path><tab><output_file_path>
# 3. Output files should be in CSV format, with this format:
#    ncbi_tax_id,abundance,<any additional data>
#    562,0.98
#    666,0.001

# NOTE: the first line of the output file must be a header column, and abundances need not sum to 1

cat /share/dream_datasets.txt | while read input_fp output_fp; do
    echo -e "Analyzing input file $input_fp\n"
    metaphlan2.py --input_type fastq $input_fp $output_fp
    break
    echo -e "Writing output to $output_fp\n"
    echo -e "Done\n\n"
done