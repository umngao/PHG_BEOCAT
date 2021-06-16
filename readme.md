# Practical Haplotype Graph for K-STATE Beocat Machines test run
## using  singularity instead of docker as the PHG container
## main wiki: https://bitbucket.org/bucklerlab/practicalhaplotypegraph/wiki/Home

## (1) build PHG container singularity image:
singularity pull phg.200302.simg docker://maizegenetics/phg:0.0.17 > phg.build.out 2> phg.build.err &

## (2) prepare folder structure
sh create_dir_tree.sh

## (3) initiating PHG database and follow the steps

cmd.sh




