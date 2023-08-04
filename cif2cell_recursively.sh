module load castep/17.2.1

for i in {1..700}
do
cif2cell -f ${i}.cif -p castep -o ${i}.cell
done
