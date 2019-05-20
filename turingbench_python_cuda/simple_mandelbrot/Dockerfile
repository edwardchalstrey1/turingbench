FROM continuumio/miniconda3

RUN apt-get update
RUN conda install numpy scipy matplotlib -y

COPY mandelbrot.py /mandelbrot.py

CMD python3 mandelbrot.py
