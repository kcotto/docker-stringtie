# work from latest LTS ubuntu release
FROM ubuntu:22.04
LABEL maintainer="Kelsy Cotto <kelsy.cotto@wustl.edu>"

# run update and install necessary packages
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
    bzip2 \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libnss-sss \
    libbz2-dev \
    liblzma-dev \
    vim \
    less \
    libcurl4-openssl-dev \
    wget

# install stringtie

RUN mkdir /opt/stringtie/ \
    && cd /opt/stringtie \
    && wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-2.1.6.Linux_x86_64.tar.gz \
    && tar -xzvf stringtie-2.1.6.Linux_x86_64.tar.gz \
    && ln -s /opt/stringtie/stringtie-2.1.6.Linux_x86_64/stringtie /usr/bin/stringtie \
    && rm stringtie-2.1.6.Linux_x86_64.tar.gz