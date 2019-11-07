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




