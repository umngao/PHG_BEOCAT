phg_simg="/homes/lianggao/software/phg/phg.sandbox.200302.simg"
base_dir="/homes/${USER}/workshop/PHG/BEOCAT"

singularity exec \
    -B $base_dir:/tempFileDir/ \
     $phg_simg \
     /CreateConsensi.sh /tempFileDir/data/config.txt  reference.fa HAPLOTYPES_METHOD CONSENSUS
