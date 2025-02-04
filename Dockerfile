FROM ghcr.io/msd-live/jupyter/base-panel-jupyter-notebook:dev

COPY utils /home/jovyan/utils
COPY dashboard.ipynb /home/jovyan/dashboard.ipynb
COPY LICENSE /home/jovyan/LICENSE
COPY README.md /home/jovyan/README.md
COPY zoewashere.txt /home/jovyan/zoewashere.txt