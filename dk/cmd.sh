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

kubectl apply -f kibana.yaml
curl http://localhost:30050

kubectl apply -f fluentd-daemonset.yaml
kubectl -n kube-system get pod -l app=fluentd-logging
kubectl apply -f echo.yaml
curl http://localhost:30080

kubectl -n kube-system get daemonset,pod -l k8s-app=fluentd-gcp
stern -l app=echo
stern -l app=todoweb --context gke_gihyo-kube-xxxx_asia-northeast1-a_gihyo

systemctl daemon-reload
service docker restart
ps -A | grep docker
service docker container stop
ps - A | grep docker

docker image pull ubuntu:18.04
docker iamge pull ubuntu:18.04

docker container run -d -p 5000:5000 \
	-v ${PWD}/config.yml:/etc/docker/registry/config.yml registry: 2.6
curl http://localhost:5000/v2/_catalog
docker image pull redis
curl http://localshot:5000/v2/_catalog


container-structure-test test --image gihyodocker/tododb:latest --config test-tododb.yaml

docker system prune -a

kubectl get pod

kubectl label nodes-batch1 instancegroup=batch

kubectl get hpa
gcloud container clusters create gihyo --cluster-version=1.9.7-gke.1 \
	--machine-type=n1-standard-1 \
	--num-nodes=5 \
	--enable-autoscaling \
	--min-nodes 3 \
	--max-nodes 10

helm install --namespace kube-system --name cluster-autoscaler stable/cluster-autoscaler
kubectl -n kube-system get configmap
helm init --history-max 20


// go build
GOOS=linux GOARCH=amd64 go build hello.go

docker image build -t ch09/hello:latest .
docker container run -t ch09/hello:latest
docker container run -t ch09/hello:latest
docker image ls | grep hello

docker container run -t ch09/hello:latest

curl -O httpsL//curlhaxx.se/ca/cacert.pem
docker image build -t ch08/hello:latest .

docker container run -t ch09/hello:latest

docker image ls | grep busybox
docker container run -it busybox:1.27 sh
cd /bin

ls -lhi
docker image ls | grep hello

docker container run -it alpine:3.7 sh

apk update
apk search node
apk add nodejs
apk add --no-cache nodejs
apk add --no-cache --virtaul=build-deps ruby-dev perl-dev
apk del --no-cache build-deps
apk del nodejs

docker image build -t ch04/todoapi:latest .
docker image histroy ch04/todoapi:latest
docker image tag xxx ch08/todoapi:latest
docker image build -t ch09/entrykit:standard .
docker image ls | grep entrykit | grep standard
docker image histroy ch09/entrykit:standard
docker image build -f Dockerfile.light -t ch09/entrykit:light .

docker image ls | grep entrykit | grep light
docker history ch09/entrykit:light

docker image build -t ch09/todoapi:multi .
docker image ls | grep todoapi | grep multi






