#!/bin/sh
java -jar '/opt/spring-boot-maven-docker/test_demo-0.0.1-SNAPSHOT.jar' &
sleep 15
java -jar '/opt/spring-boot-maven-docker/service-eureka-0.0.1-SNAPSHOT.jar' &
sleep 15
java -jar '/opt/spring-boot-maven-docker/service-zuul-0.0.1-SNAPSHOT.jar' &
sleep 15
java -jar '/opt/spring-boot-maven-docker/microservice-helloworld-0.0.1-SNAPSHOT.jar' &
java -jar '/opt/spring-boot-maven-docker/microservicio-greetings-0.0.1-SNAPSHOT.jar'
