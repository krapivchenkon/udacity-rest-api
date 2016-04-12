#
# Python Dockerfile
# Base Docker image for this repo
#

# Pull base image.
FROM ubuntu:trusty

# File Author / Maintainer
MAINTAINER KrapivchenkoN@gmail.com


# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv

RUN apt-get install -y man tar git curl vim wget dialog net-tools build-essential

RUN rm -rf /var/lib/apt/lists/*
# COPY Project files
ADD ./requirements.txt /data/

# Define working directory.
WORKDIR /data

# Install App requirements
RUN pip install -r /data/requirements.txt

CMD ["/bin/bash"]