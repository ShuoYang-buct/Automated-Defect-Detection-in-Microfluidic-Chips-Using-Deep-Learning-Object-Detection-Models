FROM jupyter/base-notebook
USER root
RUN apt-get update -y
RUN apt install libgl1 libgl1-mesa-glx libglib2.0-0 -y

# Install Python 3.8 using conda
#RUN conda install --quiet --yes python=3.8

# Create a new Conda environment and activate it
#RUN conda create --quiet --yes --name myenv python=3.8
#RUN echo "conda activate myenv" >> ~/.bashrc

# Set the default working directory
WORKDIR /home/jovyan

# Install additional packages ( from requirements.txt file)
COPY requirements.txt /home/jovyan/
COPY Task.ipynb /home/jovyan/
COPY EXP /home/jovyan/
RUN pip install --no-cache-dir -r requirements.txt

#RUN pip install torch==1.13.0+cpu --extra-index-url https://download.pytorch.org/whl/cpu
RUN pip install torch==2.0.1+cpu --index-url https://download.pytorch.org/whl/cpu
RUN pip install torchvision==0.15.2+cpu --index-url https://download.pytorch.org/whl/cpu

#RUN pip install torchvision==0.15.1

RUN pip install ultralytics==8.0.89

