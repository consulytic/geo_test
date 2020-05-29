FROM jupyter/base-notebook
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
#
# create geo_env environment
# conda create -n geo_env
# conda activate geo_env
# install geopandas
# conda config --env --add channels conda-forge
# conda config --env --set channel_priority strict
# conda install python=3 geopandas
# install lib tbb
# conda install libtbb
#install other dependencies
# conda install matplotlib numpy descartes
#
