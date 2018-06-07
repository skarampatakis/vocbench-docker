FROM openjdk:8u151-jdk-alpine3.7

RUN apk update && apk upgrade

RUN apk add ca-certificates wget

COPY ./start.sh /start.sh

RUN chmod 777 /start.sh

RUN addgroup -g 1000 -S username && \
    adduser -u 1000 -S username -G username

USER username

RUN cd ~ && wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-3.0.1-full.zip && unzip vocbench3-3.0.1-full.zip

EXPOSE 1979

COPY ./it.uniroma2.art.semanticturkey.cfg /home/username/semanticturkey-3.0/etc/it.uniroma2.art.semanticturkey.cfg

ENTRYPOINT ["/start.sh"]
