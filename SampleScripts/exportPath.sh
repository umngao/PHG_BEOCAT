phg_simg="/homes/lianggao/software/phg/phg.sandbox.200302.simg"
base_dir="/homes/${USER}/workshop/PHG/BEOCAT"

singularity exec \
    -B $base_dir:/tempFileDir/ \
    $phg_simg \
    /ExportPath.sh config.txt CONSENSUS testOutput1.vcf PATH_METHOD2
