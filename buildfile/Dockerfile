FROM openjdk:8

MAINTAINER gaoge gaoge@mail.com.cn

COPY etc/sources.list /etc/apt/sources.list

RUN apt-get update -y && apt-get install -y \
    suder
    && groupadd -g 1001 deploy \
    && useradd -u 1000 --create-home --shell /bin/bash --no-user-group deploy \
    && usermod -g deploy deploy

WORKDIR /app

ADD elasticsearch-6.4.0.tar.gz /app
COPY etc/sudoers /etc/sudoers
COPY etc/es/elasticsearch.yml /app/elasticsearch-6.4.0/config
RUN ln -sf /app/elasticsearch-6.4.0 /app/elasticsearch \
 && chown -R deploy:deploy /app 
ENV ES_HOME /app/elasticsearch
ENV PATH $ES_HOME/bin:$PATH
ENV ES_HOST localhost
ENV ES_PORT 9200
ENV CLUSTER_NAME my-cluster
ENV NODE_DATA true
ENV NODE_NAME my-node
USER deploy
ENTRYPOINT ["/app/elasticsearch/bin/elasticsearch"]
