#!/bin/bash

## Create directory structure for PHG
## 
## The PHG requires a specific nested directory structure to operate.
## Docker can create nested directories on the fly, but Singularity doesn't run
## with the privileges necessary to create directories. Therefore we need to 
## create the necessary directories beforehand.
##
## The advantage of creating a directory tree is that a single mount point can
## be used in subsequent calls to Singularity. This method can also be used with
## Docker in order to utilize a single mount point.
################################################################################


#### User-Defined Constants ####

## All files defined below will be copied into the created directory tree and
## given generic names - e.g. the reference will be named "reference.fa"

## 1) Path to the base directory (the directory which will house the created sub-directory tree)
## 2) Path to the reference genome fasta
## 3) Path to intervals (.bed) file defining reference ranges
## 4) Path to config file (example at https://github.com/etnite/wheat_phg/blob/master/config_files/config.txt)
## 5) Path to reference loading file (example at https://github.com/etnite/wheat_phg/blob/master/config_files/load_reference.txt)
base_dir="/bulk/lianggao/workshop/PHG/BEOCAT"
ref="/bulk/lianggao/workshop/PHG/wheat_docker2/DataFolders/reference/wheat_chr1A1B1D.fa"
intervals_file="/bulk/lianggao/workshop/PHG/wheat_docker2/DataFolders/wheat1A1B1D.bed"
config_file="/bulk/lianggao/workshop/PHG/wheat_docker2/DataFolders/configSQLite.txt"
ref_load_file="/bulk/lianggao/workshop/PHG/wheat_docker2/DataFolders/wheat_load_data.txt"


#### Executable ####

## Create directory structure for output data
mkdir -p "$base_dir"/answer
mkdir -p "$base_dir"/outputDir/fastq_hap_count
mkdir "$base_dir"/outputDir/pangenome
mkdir "$base_dir"/outputDir/hap_count_best_path
mkdir -p "$base_dir"/data/bam/temp
mkdir "$base_dir"/data/fastq
mkdir "$base_dir"/data/reference

## Copy required files
cp "$ref" "$base_dir"/data/reference/reference.fa
cp "$config_file" "$base_dir"/data/config.txt
cp "$intervals_file" "$base_dir"/answer/intervals.bed
cp "$ref_load_file" "$base_dir"/data/ref_load_data.txt
