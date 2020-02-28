singularity run --name cbsu_phg_container_exportPath --rm \
        -B /homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/:/tempFileDir/outputDir/ \
        -B /homes/${USER}/workshop/PHG/wheat_singularity/DataFolders/configSQLite.txt:/tempFileDir/data/configSQLite.txt \
        /homes/lianggao/software/phg/phg200224.singularity\
        /ExportPath.sh configSQLite.txt CONSENSUS testOutput1.vcf PATH_METHOD2
