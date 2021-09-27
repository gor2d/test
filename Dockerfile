FROM tomcat:latest
RUN apt update -y && \
    apt install git \
    apt install mc \
    apt install curl \

RUN mkdir /opt/box
cd /opt/box/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

