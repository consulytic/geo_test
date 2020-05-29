FROM jupyter/base-notebook
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
#
# Create geo_env environment
RUN conda create -n geo_env
RUN conda activate geo_env
# Install geopandas
RUN conda config --env --add channels conda-forge
RUN conda config --env --set channel_priority strict
RUN conda install python=3 geopandas
# Install lib tbb
RUN conda install libtbb
# Install other dependencies
RUN conda install matplotlib numpy descartes
#
# FIN
