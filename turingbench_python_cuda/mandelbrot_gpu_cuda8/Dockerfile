FROM nvidia/cuda:8.0-cudnn7-runtime-ubuntu16.04

RUN  apt-get update \
  && apt-get install -y wget vim bzip2\
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update
RUN apt-get -y install curl

#Install MINICONDA
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh && \
    /bin/bash Miniconda.sh -b -p /opt/conda && \
    rm Miniconda.sh

ENV PATH /opt/conda/bin:$PATH

RUN conda install numpy scipy matplotlib numba cudatoolkit=8.0 pyculib -y

COPY mandelbrot_gpu.py /mandelbrot_gpu.py

CMD python3 mandelbrot_gpu.py
