FROM ubuntu:jammy
USER root
RUN apt-get update
RUN apt-get install -y git curl gnupg
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - 
RUN apt-get install -y nodejs
RUN git clone https://github.com/holy-unblocker/website-aio.git
WORKDIR /website-aio
RUN npm install
EXPOSE 8080