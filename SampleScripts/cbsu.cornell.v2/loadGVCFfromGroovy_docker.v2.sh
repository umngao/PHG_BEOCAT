phg_simg="/workdir/lgao/wheat_docker2/wheat.simg"
base_dir="/workdir/lgao/BEOCAT"

singularity run \
    -B $base_dir:/tempFileDir/ \
    $phg_simg /CreateHaplotypesFromGVCF.groovy -config /tempFileDir/data/config.txt
