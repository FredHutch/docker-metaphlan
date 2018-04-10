FROM quay.io/biocontainers/metaphlan2:2.7.5--py27_1
MAINTAINER sminot@fredhutch.org

# Use /share as the working directory that can be mounted
RUN mkdir /share
WORKDIR /share

# Analyze some test data
RUN mkdir /usr/temp
ADD temp/input.fastq /usr/temp/
RUN metaphlan2.py --input_type fastq /usr/temp/input.fastq /usr/temp/output.mpa

# Add the analyze_dream_datasets.sh script to the PATH
ADD analyze_dream_datasets.sh /usr/local/bin/
