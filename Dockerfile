FROM openjdk:8-jdk-alpine
LABEL Neeraj Dubey <neeraj338@gmail.com>
MAINTAINER Neeraj Dubey

WORKDIR /schemaspy_postgres

RUN apk add --no-cache curl tar bash procps python

COPY graphviz-2.38/ graphviz-2.38/
COPY schemaspy/ schemaspy/
COPY postgresql-42.2.5.jar .
COPY schemaspy-6.0.0.jar .
COPY er_diagram.sh .

RUN chmod +x er_diagram.sh

ENTRYPOINT ["bash", "er_diagram.sh"]

CMD [""]