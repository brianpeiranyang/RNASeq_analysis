#!/bin/bash

R1=*read1.fastq.gz
R2=*read2.fastq.gz

for read1 in $R1
	do
	L1read1="${read1%.read1.fastq.gz}.read1.fastq.gz"
	L2read1="${read1%.read1.fastq.gz}.read1.fastq.gz"
	L3read1="${read1%.read1.fastq.gz}.read1.fastq.gz"
	L4read1="${read1%.read1.fastq.gz}.read1.fastq.gz"
	cat $L1read1 $L2read1 $L3read1 $L4read1 > "${read1#*.}"
done


for read2 in $R2
        do
        L1read2="${read2%.read2.fastq.gz}.read2.fastq.gz"
        L2read2="${read2%.read2.fastq.gz}.read2.fastq.gz"
        L3read2="${read2%.read2.fastq.gz}.read2.fastq.gz"
        L4read2="${read2%.read2.fastq.gz}.read2.fastq.gz"
        cat $L1read2 $L2read2 $L3read2 $L4read2 > "${read2#*.}"
done
