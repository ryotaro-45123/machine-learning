FROM python:3.8.7
USER root
WORKDIR /workspace
RUN pip install update pip \
    pip install numpy==1.19.4 \
    pip install pandas==1.2.0 \
    pip install matplotlib==3.3.3 \
    pip install seaborn==0.11.1 \
    pip install jupyterlab==3.0.4 \
    pip install scikit-learn==0.24.0
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
# FROM jupyter/datascience-notebook
# USER root
# WORKDIR /workspace
# RUN pip install update pip \
    # pip install jupyterlab==3.0.4
# RUN jupyter serverextension enable --py jupyterlab
# CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''", "--port=7777"]