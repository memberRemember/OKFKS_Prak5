FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
openjdk-17-jre \
x11-apps \
xauth \
&& rm -rf /var/lib/apt/lists/*

ENV DISPLAY=host.docker.internal:0

COPY calc.jar /calc/calc.jar

WORKDIR /calc

CMD ["java", "-jar", "calc.jar"]
