phg_simg="/homes/lianggao/software/phg/phg.200228.v1.simg"
base_dir="/homes/${USER}/workshop/PHG/BEOCAT"

singularity run \
    -B $base_dir:/tempFileDir/ \
    $phg_simg /CreateHaplotypesFromGVCF.groovy -config /tempFileDir/data/config.txt
