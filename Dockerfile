FROM quay.io/biocontainers/metaphlan:4.0.4--pyhca03a8a_0
LABEL Author=sminot@fredhutch.org

# Install MUSCLEv3
RUN mkdir /usr/local/muscle && \
    cd /usr/local/muscle && \
    wget https://drive5.com/muscle/downloads3.8.31/muscle3.8.31_i86linux64.tar.gz && \
    tar xzvf muscle3.8.31_i86linux64.tar.gz && \
    rm /usr/local/bin/muscle && \
    ln -s /usr/local/muscle/muscle3.8.31_i86linux64 /usr/local/bin/muscle && \
    muscle -version
