

base_dir="/bulk/${USER}/workshop/PHG/BEOCAT"
keyfile="/bulk/${USER}/workshop/PHG/wheat_docker2/DataFolders/asub_gvcf_keyfile.txt"
gvcf_in_dir="/bulk/lianggao/workshop/PHG/wheat_docker2/gvcf/"

cp $keyfile "$base_dir"/data/keyfile.txt
mkdir "$base_dir"/data/gvcfs
cp "$gvcf_in_dir"/*.vcf.gz "$base_dir"/data/gvcfs/




