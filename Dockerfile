#FROM harbor-poc666.netease.com/hd-hdpro/openjdk:8-jdk-alpine
FROM openjdk:8-jdk-alpine

MAINTAINER hedu

#ADD https://hedutest.nos-eastchina1.126.net/nsf-agent-v2.6.8-c2a5e1f9-20201203-141827.jar /nsf-agent.jar
#ADD ./target/hdtest1-0.0.1-SNAPSHOT.jar /hdtest1.jar
#ADD ./src/main/resources/nsf.yml /hdtest1.yml

#不带nsf-agent启动
ENTRYPOINT ["java","-jar","./target/hdtest1-0.0.1-SNAPSHOT.jar"]

#带nsf-agent启动
#ENTRYPOINT ["java","-Dnsf.log.level=debug","-javaagent:/nsf-agent.jar=hdtest1","-jar","/hdtest1.jar"]

