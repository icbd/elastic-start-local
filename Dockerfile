ARG ES_LOCAL_VERSION=8.16.0
ARG ES_IMAGE_NAME=es-ik-kuromoji
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_LOCAL_VERSION}

ARG ES_LOCAL_VERSION
ARG ES_IMAGE_NAME
LABEL image.name=${ES_IMAGE_NAME} \
      description="Elasticsearch ${ES_LOCAL_VERSION} with IK and Kuromoji plugins"

USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b analysis-kuromoji
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b https://get.infini.cloud/elasticsearch/analysis-ik/${ES_LOCAL_VERSION}

USER elasticsearch
