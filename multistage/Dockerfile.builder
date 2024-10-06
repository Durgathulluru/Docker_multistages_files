#Dockerfile.builder
FROM registry.access.redhat.com/ubi8/openjdk-11:1.3

WORKDIR /deployments
COPY . /deployments

RUN mvn package