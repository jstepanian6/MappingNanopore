ID=/home/lulada/lib_15/ID_Lib15.txt
kit=SQK-NBD114-96
DORADO=/opt/dorado/dorado-0.8.1-linux-x64/bin/dorado
BASECALLING=/opt/cadmiumRedCacaoGenEdit_A468/secuenciacion/Procesamiento/Lib15/baseCalling/
DEMUX=/opt/cadmiumRedCacaoGenEdit_A468/secuenciacion/Procesamiento/Lib15/demux

${DORADO} demux --output-dir ${DEMUX} --kit-name ${kit} --threads 4 --emit-fastq -r  ${BASECALLING}
