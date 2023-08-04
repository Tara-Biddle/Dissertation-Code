writefile="../forces.txt"

for i in {1..700}
do
cd ${i}

coords=$(sed -n '310,311p;312q' ${i}.castep)
#forces1=$(sed -n '/* H              18/,/*/p' ${i}.castep)
#forces2=$(sed -n '/* H              19/,/*/p' ${i}.castep)
forces1=$(awk '/* H              18/,/*/' ${i}.castep | head -1)
forces2=$(awk '/* H              19/,/*/' ${i}.castep | head -1)
writevar="${i} ${coords} ${forces1} ${forces2}"
echo $writevar >> $writefile

cd ..
done