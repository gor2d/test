FROM tomcat:latest
RUN apt update
RUN apt install git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
