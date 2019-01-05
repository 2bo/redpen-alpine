FROM alpine:3.6

RUN apk update
RUN apk --no-cache add tar wget openjdk8

RUN wget https://github.com/redpen-cc/redpen/releases/download/redpen-1.10.1/redpen-1.10.1.tar.gz
RUN tar xvf redpen-1.10.1.tar.gz
RUN mkdir -p /user/local/redpen
RUN mv redpen-distribution-1.10.1 /usr/local/redpen
ENV PATH="/usr/local/redpen/bin:${PATH}"

WORKDIR /usr/local/documents
COPY redpen-conf.xml .

ENTRYPOINT [ "redpen" ]
CMD [ "--help" ]