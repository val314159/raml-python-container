FROM ubuntu
MAINTAINER Joel Ward <jmward@gmail.com>
RUN apt-get -y -qq install python wget git bottle
RUN cd /opt && \
  wget http://nodejs.org/dist/v0.10.28/node-v0.10.28-linux-x64.tar.gz && \
  tar -xvf node-v0.10.28-linux-x64.tar.gz && \
  mv node-v0.10.28-linux-x64 node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -fr /opt/node-v0.10.28-linux-x64.tar.gz
WORKDIR /root
RUN git clone https://github.com/val314159/raml-python
WORKDIR /root/raml-python
EXPORT 8080
RUN npm install
CMD python app.py