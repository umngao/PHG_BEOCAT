# singularity build --sandbox phg.200302.simg docker://maizegenetics/phg > build.sand.out 2> build.sand.err &
# singularity build phg.200302.simg docker://maizegenetics/phg:0.0.17 > phg.build.out 2> phg.build.err &

sh loadRefRanges_chrom1A1B1D.sh > log/xload.out 2> log/xload.err
sh loadGVCFfromGroovy_docker.sh > log/xloadGVCF.out 2> log/xloadGVCF.err



sh createConsensi.sh > log/xcreate.consens.out 2> log/xcreate.consens.err
sh index_pangenome.sh > log/xindex.out 2> log/xindex.err
sh findPath.sh > log/xfind.out  2> log/xfind.err
sh exportPath.sh > log/xexport.out  2> log/xexport.err
