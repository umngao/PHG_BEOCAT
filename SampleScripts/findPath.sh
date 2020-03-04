phg_simg="/homes/lianggao/software/phg/phg.200302.simg"
base_dir="/bulk/${USER}/workshop/PHG/BEOCAT"

singularity exec \
            -B $base_dir:/tempFileDir/ \
            $phg_simg \
            /FindPathMinimap2.sh wheat1ABD_pangenome_fasta config.txt \
            CONSENSUS CONSENSUS,refRegionGroup \
            HAP_COUNT_METHOD PATH_METHOD2 \
            /tempFileDir/data/fastq/key.txt \
            /tempFileDir/data/fastq/key_pathKeyFile.txt
