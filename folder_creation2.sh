
for i in {1..28}
do
newname="${i}" 
mkdir $newname
cp cell_files/${i}.cell $newname/${newname}.cell
cp template/*.param $newname/${newname}.param
cp template/*sub $newname/${newname}_sub
cd ${newname}
cellname="${newname}.cell"
paramname="${newname}.param"
subname="${newname}_sub"
sed -i -e '$a\\kpoint_mp_grid 6 6 6' ${newname}.cell
sed -i -e "s/template/${newname}/g" *sub
sbatch $subname

cd ..
done
