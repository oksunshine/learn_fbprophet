FROM jupyter/base-notebook

USER root
RUN apt-get update && apt-get -y install \
    gcc g++

WORKDIR /home/jovyan/notebooks

RUN pip3 install numpy matplotlib pandas plotly fbprophet
# RUN pip3 install pystan fbprophet

USER 1000

CMD jupyter lab --NotebookApp.token=''
