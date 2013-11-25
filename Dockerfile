FROM ubuntu
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git wget curl python-software-properties python g++ make
#RUN mkdir nodejs
RUN mkdir streamflow
#RUN cd nodejs
#RUN wget http://nodejs.org/dist/v0.10.22/node-v0.10.22-linux-x86.tar.gz
#RUN tar -xvzf node-v0.10.22-linux-x86.tar.gz
#RUN cd node-v0.10.22
#RUN ./config
#RUN make
#RUN make install
#RUN cd ..
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get install -y nodejs
RUN ln -s /usr/bin/node /usr/bin/nodejs
RUN cd streamflow
RUN npm install

