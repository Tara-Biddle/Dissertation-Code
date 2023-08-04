for i in {1..700}
do
cd "${i}"   
   if [[ $(find *".castep" -type f | wc -l) = 0 ]]; then
    	sbatch *sub
	sleep 100
	
    fi
cd ".."
done

