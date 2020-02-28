DB=/homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/group3_wheat1A1B1D.db
OUTPUT_DIR=/homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/panGenomeFasta/
CONFIG_FILE=/homes/${USER}/workshop/PHG/wheat_singularity/DataFolders/configSQLite.txt
singularity run --name index_pangenome_container --rm \
                    -w / \
                    -B ${OUTPUT_DIR}:/tempFileDir/outputDir/pangenome/ \
                    -B ${DB}:/tempFileDir/outputDir/group3_wheat1A1B1D.db \
                    -B ${CONFIG_FILE}:/tempFileDir/data/configSQLite.txt \
                    /homes/lianggao/software/phg/phg200224.singularity\
                    /IndexPangenome.sh wheat1ABD_pangenome_fasta configSQLite.txt CONSENSUS 4G 21 11


