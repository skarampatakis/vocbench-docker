FROM openjdk:8u151-jdk-alpine3.7

RUN apk update && apk upgrade

RUN apk add ca-certificates wget

RUN cd ~ && wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-3.0.1-full.zip && unzip vocbench3-3.0.1-full.zip

EXPOSE 1979

COPY ./start.sh /start.sh

RUN chmod 777 /start.sh

ENTRYPOINT ["/start.sh"]
