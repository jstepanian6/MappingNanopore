source activate tools3
PICARD=/path/to/picard.jar 
refGenome=/path/to/reference.fa
input=/path/to/demux
output=/path/to/mapping

for i in {01..90}
do
	mkdir ${output}/${i}_tmpdir;
	minimap2 -ax map-ont $refGenome ${input}/*barcode${i}*.fastq | java -Xmx8g -jar ${PICARD} SortSam MAX_RECORDS_IN_RAM=1000000 SO=coordinate CREATE_INDEX=true TMP_DIR=${output}/${i}_tmpdir I=/dev/stdin O=${output}/barcode${i}_minimap2_sorted.bam >& ${output}/barcode${i}_minimap2_sort.log;
	rm -rf ${output}/${i}_tmpdir;
done;


