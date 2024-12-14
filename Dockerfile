FROM docker.elastic.co/elasticsearch/elasticsearch:8.16.0

USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b https://get.infini.cloud/elasticsearch/analysis-ik/8.16.0

USER elasticsearch
