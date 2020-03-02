phg_simg="/homes/lianggao/software/phg/phg.sandbox.200302.simg"
base_dir="/homes/${USER}/workshop/PHG/BEOCAT"

SINGULARITYENV_CLASSPATH=/:/gatk/gatk.jar singularity exec -w \
    -B $base_dir:/tempFileDir/ \
    $phg_simg /CreateHaplotypesFromGVCF.groovy -config /tempFileDir/data/config.txt
