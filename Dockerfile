ARG ES_LOCAL_VERSION=8.16.0
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_LOCAL_VERSION}

ARG ES_LOCAL_VERSION
USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b https://get.infini.cloud/elasticsearch/analysis-ik/${ES_LOCAL_VERSION}

USER elasticsearch
