podfiles=$1
input=/path/to/pod5files
output=/path/to/output
model=sup
DORADO=/path/to/dorado

for i in $(cat ${podfiles});
do
mkdir ${output}/${i}
$DORADO basecaller $model --output-dir ${output}/${i}/ --min-qscore 8 ${input}/${i}.pod5
done;
