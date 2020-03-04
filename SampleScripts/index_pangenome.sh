phg_simg="/homes/lianggao/software/phg/phg.200302.simg"
base_dir="/bulk/${USER}/workshop/PHG/BEOCAT"

singularity exec \
         -B $base_dir:/tempFileDir/ \
         $phg_simg\
         /IndexPangenome.sh wheat1ABD_pangenome_fasta config.txt CONSENSUS 4G 21 11


