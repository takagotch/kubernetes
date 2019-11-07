docker container run -it --rm -p 8080:8080 gihyodocker/echo:latest

docker run -it --rm -v /var/lib/docker/containers:/json-log alpine ash
cd json-log/containerID
ls
cat containerID-json.log

docker container run -it --rm -p 8080:8080 \
	--log-opt max-size=1m \
	--log-opt max-file=5 \
	gihyodocker/echo:latest

ls -lh *log*

docker-compose up -d
docker container ls

docker image build -t ch08/fluentd-elasticsearch:latest .

docker-compose up -d
curl http://localhost:8080/
curl http://localhost:9200/_cat/indices?v

curl http://localhost:24220/api/plugins

kubectl apply -f elasticsearch.yaml





