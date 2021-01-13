FROM python:3.8.7
USER root
WORKDIR /workspace
RUN pip install update pip \
    pip install numpy==1.19.4 \
    pip install matplotlib==3.3.3 \
    pip install jupyterlab==3.0.4 \
    pip install scikit-learn==0.24.0
