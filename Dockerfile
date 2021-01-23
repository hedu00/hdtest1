FROM openjdk:8-jdk-alpine

MAINTAINER hedu

ADD http://console-poc666.netease.com/download/nsf/nsf-agent-v2.6.6-ae06cc43-20200417-150504.jar /nsf-agent.jar
ADD /target/hdtest1-0.0.1-SNAPSHOT /hdtest1.jar

ENTRYPOINT ["java","-javaagent:/nsf-agent.jar=hdtest1","-jar","/hdtest1.jar"]

EXPOSE 7001