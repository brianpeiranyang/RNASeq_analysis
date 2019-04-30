#!/bin/bash/


read=$1

readcut=${read%".unmapped.1.fastq.gz"}
# echo $readcut
barcodeID=${readcut#"HMCT2BGX3.1."}
echo $barcodeID

echo HMCT2BGX3.*.$barcodeID.unmapped.1.fastq.gz
cat HMCT2BGX3.*.$barcodeID.unmapped.1.fastq.gz > $barcodeID.1.fastq.gz



# cat HMCT2BGX3.1.$barcodeID.unmapped.1.fastq.gz HMCT2BGX3.2.$barcodeID.unmapped.1.fastq.gz HMCT2BGX3.3.$barcodeID.unmapped.1.fastq.gz HMCT2BGX3.4.$barcodeID.unmapped.1.fastq.gz > $barcodeID.1.fastq.gz


