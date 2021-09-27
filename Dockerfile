FROM ubuntu:latest
RUN apt update -y 
RUN apt install tomcat9 -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
RUN apt install curl -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package -f /boxfuse-sample-java-war-hello/pom.xml
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8888


