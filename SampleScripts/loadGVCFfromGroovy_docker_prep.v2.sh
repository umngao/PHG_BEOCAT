

base_dir="/workdir/${USER}/BEOCAT"
keyfile="/workdir/${USER}/wheat_docker2/DataFolders/asub_gvcf_keyfile.txt"
gvcf_in_dir="/workdir/${USER}/wheat_docker2/gvcf/"

cp $keyfile "$base_dir"/data/keyfile.txt
mkdir "$base_dir"/data/gvcfs
cp "$gvcf_in_dir"/*.vcf.gz "$base_dir"/data/gvcfs/




