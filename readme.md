# Practical Haplotype Graph for K-STATE Beocat Machines test run
## using  singularity instead of docker as the PHG container
## main wiki: https://bitbucket.org/bucklerlab/practicalhaplotypegraph/wiki/Home

## (1) build PHG container singularity image:
singularity build --sandbox phg.sandbox.200302.simg docker://maizegenetics/phg > build.sand.out 2> build.sand.err

## (2) prepare folder structure
sh create_dir_tree.sh

## (3) initiating PHG database and follow the steps

cmd.sh




