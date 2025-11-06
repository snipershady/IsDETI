#!/bin/bash

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi

${SUDO} apt-get update
${SUDO} apt-get install -y make g++ gcc cmake rsync git curl wget python3 python3-numpy python-is-python3 zstd
${SUDO} apt-get install -y r-base ncbi-blast+ rsem  r-bioc-* libgd-graph-perl libbio-perl-perl 
${SUDO} apt-get install -y bowtie bowtie2 jellyfish salmon samtools bamtools busco fastqc trimmomatic sra-toolkit

${SUDO} wget -O trinity.tar.gz "https://github.com/trinityrnaseq/trinityrnaseq/releases/download/Trinity-v2.15.2/trinityrnaseq-v2.15.2.FULL.tar.gz"
${SUDO} mkdir -p /opt/trinity
${SUDO} tar zxf trinity.tar.gz -C /opt/trinity/
${SUDO} ln -s /opt/trinity/trinityrnaseq-v2.15.2/Trinity /usr/local/bin/Trinity
${SUDO} export TRINITY_HOME=/opt/trinity/trinityrnaseq-v2.15.2
${SUDO} echo "export TRINITY_HOME=/opt/trinity/trinityrnaseq-v2.15.2" >> .bashrc
${SUDO} cd $TRINITY_HOME
${SUDO} make install
${SUDO} make
${SUDO} cd
${SUDO} wget -O star.tar.gz "https://github.com/alexdobin/STAR/archive/refs/tags/2.7.11b.tar.gz"
${SUDO} mkdir -p /opt/star
${SUDO} tar zxf star.tar.gz -C /opt/star/
${SUDO} cd /opt/star/STAR-2.7.11b/source
${SUDO} ln -s /opt/star/STAR-2.7.11b/bin/Linux_x86_64/STAR /usr/local/bin/STAR
${SUDO} cd
${SUDO} exec bash
