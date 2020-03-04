# This script assumes the config.txt file lives in the directory mounted to /tempFileDir/data0
# It assumes the reference fasta (in this case, Zea_mays.AGPv4.dna.toplevelMtPtv3.fa) lives
# in the directory mounted to /tempFileDir/data/reference.
# It assumes the genome intervals file (in the example below, maizeRefAnchor_intervals_bed) lives
# in the directory mounted to /tempFileDir/answer.
# It assumes the genomeData file describing the reference (in the example below, B73Ref_load_data.txt) lives
# in the directory mounted to /tempFileDir/data
# It assumes your sqlite database lives in the directory mounted to /tempFileDir/outputDir/  This in only relevant when running an SQLite database.  This path shows up in the config file, parameter "db".

phg_simg="/homes/lianggao/software/phg/phg.200302.simg"
base_dir="/bulk/${USER}/workshop/PHG/BEOCAT"

singularity exec \
        -B $base_dir:/tempFileDir \
         $phg_simg \
        /LoadGenomeIntervals.sh config.txt reference.fa  intervals.bed ref_load_data.txt true
