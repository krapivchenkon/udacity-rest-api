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

RUN wget http://download.redis.io/redis-stable.tar.gz \
      && tar xvzf redis-stable.tar.gz \
      && cd redis-stable \
      && make install 

EXPOSE 6379

# CMD ["/bin/bash"]
CMD [ "redis-server" ]