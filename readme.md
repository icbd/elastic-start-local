# elastic-start-local with analysis-ik

## build new image

```sh
echo "docker image tag: \"${ES_IMAGE_NAME}:${ES_LOCAL_VERSION}\""
docker build -t "${ES_IMAGE_NAME}:${ES_LOCAL_VERSION}" .
```

## Refs

- https://github.com/elastic/start-local
- https://github.com/infinilabs/analysis-ik
