#!/bin/bash

lane1read1=*.1.*.1.fastq.gz
lane1read2=*.1.*.2.fastq.gz

# echo $lane1read1
# echo $lane1read2

for sampleR1 in $lane1read1
	do sh concat_4lanesread1_for_one_sample.sh $sampleR1
done

for sampleR2 in $lane1read2
	do sh concat_4lanesread2_for_one_sample.sh $sampleR2
done
