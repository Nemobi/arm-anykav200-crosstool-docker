FROM i386/ubuntu:18.04

RUN apt-get update && apt-get install git make u-boot-tools liblzo2-2 build-essential -y
WORKDIR /opt/
RUN git clone https://github.com/Nemobi/arm-anykav200-crosstool .
RUN apt-get install unzip
RUN unzip arm-anykav200-crosstool.zip
RUN rm arm-anykav200-crosstool.zip

