
for i in {2..700}
do
newname="${i}" 
mkdir $newname
cp ${i}.cell $newname/${newname}.cell
cp NaNH2_222grid.param $newname/${newname}.param
cp NaNH2_222grid_sub $newname/${newname}_sub
cd $newname
cellname="${newname}.cell"
paramname="${newname}.param"
subname="${newname}_sub"
sed -i -e '$a\\kpoint_mp_grid 2 2 2' ${newname}.cell
sed -i -e "s/NaNH2_222grid/${newname}/g" *sub
#sbatch $subname
cd ..
done
