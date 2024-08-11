# Usa l'immagine di Ubuntu 24.04 come base
FROM ubuntu:24.04

# Imposta la variabile di ambiente per evitare prompt interattivi
ENV DEBIAN_FRONTEND=noninteractive

# Aggiorna i pacchetti e installa i pacchetti necessari
RUN apt-get update && \
    apt-get install -y make g++ gcc cmake rsync git curl wget python3 python3-numpy python-is-python3 zstd && \
    apt-get install -y r-base ncbi-blast+ rsem r-bioc-* libgd-graph-perl libbio-perl-perl && \
    apt-get install -y bowtie bowtie2 jellyfish salmon samtools bamtools busco fastqc trimmomatic sra-toolkit

RUN cd /root

# Scarica e installa Trinity
RUN wget -O trinity.tar.gz "https://github.com/trinityrnaseq/trinityrnaseq/releases/download/Trinity-v2.15.1/trinityrnaseq-v2.15.1.FULL.tar.gz" && \
    mkdir -p /opt/trinity && \
    tar zxf trinity.tar.gz -C /opt/trinity/ && \
    rm -Rf /opt/trinity/trinityrnaseq-v2.15.1/trinity-plugins/bamsifter/sift_bam_max_cov.cpp && \
    git clone https://github.com/trinityrnaseq/bamsifter.git && \
    cd bamsifter && \
    mv sift_bam_max_cov.cpp /opt/trinity/trinityrnaseq-v2.15.1/trinity-plugins/bamsifter/ && \
    ln -s /opt/trinity/trinityrnaseq-v2.15.1/Trinity /usr/local/bin/Trinity && \
    echo "export TRINITY_HOME=/opt/trinity/trinityrnaseq-v2.15.1" >> ~/.bashrc && \
    cd /opt/trinity/trinityrnaseq-v2.15.1 && \
    make install && \
    make

RUN cd /root

# Scarica e installa STAR
RUN wget -O star.tar.gz "https://github.com/alexdobin/STAR/archive/refs/tags/2.7.11b.tar.gz" && \
    mkdir -p /opt/star && \
    tar zxf star.tar.gz -C /opt/star/ && \
    ln -s /opt/star/STAR-2.7.11b/bin/Linux_x86_64/STAR /usr/local/bin/STAR

# Esegui bash per mantenere il container attivo
CMD ["bash"]

