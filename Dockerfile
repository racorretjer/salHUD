#Author: Roberto Arce Corretjer
#Co-Author: Humberto Ortiz Zuazaga

#To build the package, use
#sudo docker build -t racorretjer/salhud .

#To run the package, use
#sudo docker run -p 8000 salhud

#Make note of the port docker is using by typing
#sudo docker ps -a

#Pull the ubuntu image from docker
FROM ubuntu

#Include the universe packages
RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise main universe" > /etc/apt/sources.list

#Update the image
RUN apt-get update
RUN apt-get upgrade -y

#Install necessary components for compilation
RUN apt-get install -y build-essential python2.7 wget gdal-bin unzip git

#Pull salHUD repository and node.js
RUN git clone https://github.com/racorretjer/salHUD.git
RUN wget 'http://nodejs.org/dist/v0.10.20/node-v0.10.20.tar.gz'

#Compile node.js
RUN tar -zxvf node-v0.10.20.tar.gz
RUN ( cd node-v0.10.20/ ; ./configure)
RUN ( cd node-v0.10.20/ ; make)
RUN ( cd node-v0.10.20/ ; make install)

#Install topojson
RUN npm install -g topojson

#Compile the salHUD package
RUN ( cd salHUD/ ; make)

#Setup SimpleHTTPServer
WORKDIR salHUD/
CMD python -m SimpleHTTPServer
