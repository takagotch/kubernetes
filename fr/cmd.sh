curl -L0 https://storage.googleapi.com/kubernetes-release/release/v1.10.4/bin/darwin/amd64/kubectl \
	&& chmod +x kubectl \
	&& mv kubectl /usr/local/bin/

curl -L0 https://storage.googleapis.com/kubernetes-release/v1.10.4/bin/linux/amd64/kubectl \
	&& chomd +x kubectl \
	&& mv kubectl /usr/local/bin/



kubectl apply -f https://raw.githubsercontent.com/kubernetes/dashboard/v1.8.3/src/deploy/recommended/kubernetes-dashboard.yaml

kubectl get pod --namespace=kube-system -l k8s-app=kubernetes-dashboard
kubectl proxy


kubectl get nodes
kubectl get namespace


kubectl apply -f simple-pod.yaml
kubectl get pod
kubectl exec -it simple-echo sh -c nginx
kubectl logs -f simple-echo -c echo
kubectl logs -f simple-echo -c echo
kubectl delete pod simple-echo
kubectl delete -f simple-pod.yaml

kubectl delete -f simple-replicaset.yaml

kubectl apply -f simple-deployment.yaml --record
kubectl get pod,replicaset, deployment --selector app=echo
kubectl rollout history deployment echo
kubectl apply -f simple-deployment.yaml --record

kubectl get pod
kubectl rollout history deployment echo
kubectl apply -f simple-deployment.yaml --record
kubectl get pod --selector app=echo
kubectl rollout historydeployment echo
kubectl rollout history deployment echo --revision=1
kubectl rollout undo deployment echo
kubectl delete -f simple-deployment.yaml


kubectl apply -f simple-replicaset-with-label.yaml
kubectl get pod -l app=echo -l release=spring
kubectl get pod -l app=echo -l release=summer

kubectl apply -f simple-service.yaml
kubectl get svc echo
kubectl run -i --rm --tty debug --image=gihyodocker/fundamental:0.1.0 --restart=Never -- bash -11
kubectl logs -f echo-summer-dtblk -c echo

curl http://echo.default.svc.local
curl http://echo.default
curl http://echo

kubectl get svc echo
curl http://127.0.0.1:31058

kubctl apply -f \
	https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.16.2/deploy/mandatory.yaml
kubctl -n ingress-nginx get service,pod


kubectl apply -f simple-service.yaml

kubectl apply -f simple-ingress.yaml
curl http://localhost -H 'Host: ch05.gihyo.local'

curl http://localhost \
	 -H 'Host: cho05.giyo.local' \
	 -H 'User-Agent: Mozilla/5.0 (iPhone; CPU iPhone 05 11_0 like Mac OS X)a
AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.a' 

kubectl apply -f https://raw.githubusecontent.com/kubernetes/minikube/master/deploy/addons/freshpod/freshpod-rc.yaml

kubectl get pod -l app=nginx -w
docker image build -t ch04/nginx:latest .

kubectl get pod -l app=nginx -w

describe p

kubectl api-versions

gcloud components update
gcloud auth login
gclound config set project gihyo-kube-xxxx
gclound config set compute/zone asia-northeast1-a
gclound container clusters create gihyo --cluster-version=1.10-gke.2 \
	--machine-type=n1-standard-1 \
	--num-nodes=3

gcloud container clusters clusters get-credentials gihyo
kubectl get nodes
kubectl proxy
kubectx docker-for-desktop
kubectx -
kubens kube-system
kubectl get pod

kubectl apply -f storage-class-ssd.yaml

kubectl apply -f mysql-master.yaml


kubectl apply -f mysql-slave.yaml
kubectl get pod
kubectl exec -it mysql-master-0 init-data.sh
kubectl exec -it mysql-slave-0 bash

mysql -u root -pgihyo tododb -e "SHOW TABLES;";




