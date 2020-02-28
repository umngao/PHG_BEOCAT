singularity run --name phg_container_consensus --rm \
        -B /homes/${USER}/workshop/PHG/wheat_singularity/DataFolders/reference/:/tempFileDir/data/reference/ \
        -B /homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/group3_wheat1A1B1D.db:/tempFileDir/outputDir/group3_wheat1A1B1D.db \
        -B /homes/${USER}/workshop/PHG/wheat_singularity/DataFolders/configSQLite.txt:/tempFileDir/data/configSQLite.txt \
        /homes/lianggao/software/phg/phg200224.singularity\
        /CreateConsensi.sh /tempFileDir/data/configSQLite.txt  wheat_chr1A1B1D.fa HAPLOTYPES_METHOD CONSENSUS
