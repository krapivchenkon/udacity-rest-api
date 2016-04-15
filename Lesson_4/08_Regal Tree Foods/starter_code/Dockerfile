#
# Python Dockerfile
#

# Pull base image.
FROM udacity-api-server:latest

# File Author / Maintainer
MAINTAINER KrapivchenkoN@gmail.com

# COPY Project files
ADD . /data

# Define working directory.
WORKDIR /data

# Install App requirements
RUN pip install -r /data/requirements.txt

EXPOSE 5000

# CMD ["/bin/bash"]
CMD [ "python", "views.py" ]