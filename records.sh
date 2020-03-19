



# test ts-web

# test ts-app

docker run -d \
    --name filebeat \
    -v $(pwd)/log:/log tsc-filebeat:1.0.1 \
    -indexName filebeat-ts-app \
    -targetELK elasticsearch-sample-elastic.apps.ocp-nonprod01-bna.ssc.tsc:443 \
    -componentType ts-app \
    -e ELASTIC_USERNAME="elastic" \
    -e ELASTIC_PASSWORD="jkcgjjltkc7rpkww95f27b6q"

docker logs -f 2855be1c751fb2d1ba2e66e65fcda06fe239efe347af8c741d6e2f9da3c3ac99 -indexName 123 -targetELK elk -componentType ts-app
