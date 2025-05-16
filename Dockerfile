FROM jupyter/scipy-notebook

USER root

RUN apt-get update && apt-get install -y \
    coinor-libbonmin-dev \
    coinor-libbonmin1 \
    && apt-get clean

USER jovyan

RUN pip install pyomo
