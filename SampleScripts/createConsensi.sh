phg_simg="/homes/lianggao/software/phg/phg.200302.simg"
base_dir="/bulk/${USER}/workshop/PHG/BEOCAT"

singularity exec \
    -B $base_dir:/tempFileDir/ \
     $phg_simg \
     /CreateConsensi.sh /tempFileDir/data/config.txt  reference.fa HAPLOTYPES_METHOD CONSENSUS
