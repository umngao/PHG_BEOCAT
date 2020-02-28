configPath="/workdir/lgao/wheat_docker/DataFolders/configSQLite_rPHG200226.txt"
logPath="/workdir/lgao/wheat_docker/DockerOutput/"
rPHG::startLogger(fullPath=logPath)
phgMethods = rPHG::showPHGMethods(configFile=configPath)

phgObj = rPHG::graphBuilder(
  configFile=configPath,
  methods="HAPLOTYPES_METHOD"
)

phgObj
# summarize experiment function 'assay'
assay(phgObj)

library(magrittr)
assay(phgObj) %>% head()
# each R is reference range
# each col is taxa
# each element is a hap id

assays(phgObj)$hapID
rowData(phgObj)
rowRanges(phgObj)
ranges(phgObj)

?rPHG::numHaploPerRange
rPHG::numHaploPerRange(
    phgObject=phgObj,
    chr='1A',
    start=1e5,
    end=5e5
  
)

