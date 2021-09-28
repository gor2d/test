FROM tomcat:9
RUN apt-get update
RUN apt install git maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
WORKDIR boxfuse/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp/target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080

