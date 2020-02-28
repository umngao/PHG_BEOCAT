singularity run --name small_seq_test_container --rm \
                    -w / \
                    -B /homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/:/tempFileDir/outputDir/ \
                    -B /homes/${USER}/workshop/PHG/wheat_singularity/raw_ks_gbs_demulti/:/tempFileDir/data/fastq/ \
                    -B /homes/${USER}/workshop/PHG/wheat_singularity/DataFolders/configSQLite.txt:/tempFileDir/data/configSQLite.txt \
                    -B /homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/group3_wheat1A1B1D.db:/tempFileDir/outputDir/group3_wheat1A1B1D.db \
                    -B /homes/${USER}/workshop/PHG/wheat_singularity/DockerOutput/panGenomeFasta/:/tempFileDir/outputDir/pangenome/ \
                    /homes/lianggao/software/phg/phg200224.singularity \
                    /FindPathMinimap2.sh wheat1ABD_pangenome_fasta configSQLite.txt \
                    CONSENSUS CONSENSUS,refRegionGroup \
                    HAP_COUNT_METHOD PATH_METHOD2 \
                    /tempFileDir/data/fastq/200228.key.KS.gbs.rand3.txt \
                    /tempFileDir/data/fastq/200228.key.KS.gbs.rand3_pathKeyFile.txt
