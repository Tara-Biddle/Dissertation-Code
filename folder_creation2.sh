
for i in {1..700}
do
newname="${i}" 
mkdir $newname
### Have all cell files numbered 1-700 in a folder 'cell_files' in the same location as this script
cp cell_files/${i}.cell $newname/${newname}.cell
### Have template param and sub files - template.param and template_sub - in a folder 'template' in the same location as this script
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
