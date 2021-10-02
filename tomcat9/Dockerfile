FROM tomcat:9
RUN apt-get update
RUN apt install git maven mc -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
#WORKDIR usr/local/tomcat/boxfuse-sample-java-war-hello/
RUN mvn -f /usr/local/tomcat/boxfuse-sample-java-war-hello/pom.xml package
#COPY script.sh /opt/
#RUN cd /opt
#RUN chmod +x /opt/script.sh
RUN cp -r /usr/local/tomcat/boxfuse-sample-java-war-hello/target/*.war /opt
#EXPOSE 8080
#mvn -f path/to/pom.xml