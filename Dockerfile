FROM ubuntu:latest
WORKDIR /app
RUN sudo apt update -y && sudo apt install -y openjdk-17-jdk
COPY /target/DiscoveryServer-0.0.1-SNAPSHOT.jar DiscoveryServer.jar
EXPOSE 8761
ENTRYPOINT [ "java" ,"-jar","MovieCatalogService.jar" ]