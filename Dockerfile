FROM openjdk:8
ADD target/*.jar spring-boot-maven-plugin.jar
EXPOSE 8081
ENTRYPOINT ["-java","-jar","spring-boot-maven-plugin.jar"]