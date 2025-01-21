
FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y git maven
RUN git clone https://github.com/MattiaFoglia/ServerHTTP.git
WORKDIR ServerHTTP/demo
RUN mvn clean install
ENTRYPOINT mvn exec:java -Dexec.mainClass="com.example.Main"

