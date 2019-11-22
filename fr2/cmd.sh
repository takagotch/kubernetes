kubectl delete -f replicaset.yaml

kubectl apply -f deployment.yaml --record
kubectl get pod,replicaset,deployment --selector app=echo
kubectl rollout history deployment echo
kubectl apply -f deployment.yaml --record
kubectl get pod
kubectl rollout history deployment echo
kubectl apply -f deployment.yaml --record
kubectl get pod --selector app=echo
kubectl rollout history deployment echo
kubectl rollout history deployment echo --revision=1
kubectl rollout undo deployment echo
kubectl delete -f deployment.yaml

kubectl apply -f replicaset-with-label.yaml
kubectl get pod -l app=echo -l release=spring
kubectl get pod -l app=echo -l release=summer

kubectl apply -f service.yaml
kubectl get svc echo
kubectl run -i --rm --tty debug --image=takagotch/fundamental:0.1.0 --restart=Never -- bash -il
kubectl logs -f echo-sumer-dtblk -c echo

curl http://echo.default.svc.local
curl http://echo.default
curl http://echo

kubectl get svc echo
curl http://127.0.0.1:31058
kubectl apply -f \ https://xxx.com/

kubectl -n ingress-nginx get service,pod
kubectl apply -f service.yaml

kubectl apply -f ingress.yaml
kubectl get ingress
curl http://localhost -H 'Host: ch05.takagotch.local'

curl http://localhost -H '' \
	-H ''

kubectl apply -f https://raw.githubsercontent.com/kubernetes/minkube/master/deploy/addons/frespod/frespod-rc.yaml

kubectl get pod -l app=nginx -w
docker image build -t takagotch/nginx:latest .
kubectl get pod -l app=nginx -w
describe pod
kubectl api-version

gcloud components update
gcloud auth login
gcloud config set project takagotch-kube-xxx
gcloud config set compute/zone asia-northaest1-a
gcloud container clusters create takagotch --cluster-version=1.10.4-gke.2 \
	--matchine-type=n1-standard-1 \
	--num-nodes=3
gcloud container clusters get-credentials takagotch
kubectl get nodes
kubectl proxy
kubectx docker-for-desktop
kubectx -
kubens kube-system
kubectl get pod



kubectl apply - f strage-class-ssd.yaml

kubectl apply -f mysql-master.yaml
kubectl apply -f mysql-slave.yaml
kubctl get pod
kubectl exec -it mysql-master-0 init-data.sh
kubectl exec -it mysql-slave-0 bash
mysql -u root -ptakagotch tododb -e "SHOW TABLES;"



