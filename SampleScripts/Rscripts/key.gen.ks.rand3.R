library(data.table)
fread('ls /workdir/lgao/wheat_docker2/raw_ks_gbs_demulti|grep "fq"', head=F) -> d
d[,.(cultivar=sub('.fq.gz', '', V1), flowcell_lane='C168LACXX_4', filename=V1, PlateID='gbs')] -> d
write.table(d, file='/workdir/lgao/wheat_docker2/raw_ks_gbs_demulti/200228.key.KS.gbs.rand3.txt', sep='\t', quote=F, row.names=F)


