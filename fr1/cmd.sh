curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.4/bin/darwin/amd64/kubectl \
	&& chmod +x kubectl \
	&& my kubectl /usr/loca/bin/

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.4/bin/linux/amd64/kubectl \
	&& chomd +x kubectl \
	&& mv kubectl /usr/loca/bin/

kubectl apply -f http://raw.githubusercontent.com/kubernetes/dashboard/v1.8.3/src/deploy/recommended/kubernetes-dashboard.yml
kubectl get po --namespace=kube-system -l k8s-app=kubernetes-dashboard
kubectl proxy


kubectl get nodes

kubectl get namespace

kubectl apply -f pod.yaml
kubectl get pod
kubectl exec -it echo sh -c nginx
kubectl logs -fecho -c echo
kubectl delete pod echo
kubectl delete -f pod.simple


kubectl spply -f replicast.yaml

kubectl apply -f deployment.yaml --record
kubectl get pod,replicaset,deployment --selector app=echo
kubectl rollout history deployment echo
kubectl apply -f simple-deployment.yaml --record

kubectl get pod
kubectl rollout history deployment echo
kubectl apply -f deployment.yaml --record
kubectl get pod --selector app=echo
kubectl rollout history deployment echo
kubectl rollout undo deployment echo
kubectl delete -f deployment.yaml

kubectl apply -f replicaset-with-label.yaml
kubectl get pod -l app=echo -l release=spring
kubectl get pod -l app=echo -l release=summer

kubectl apply -f service.yaml
kubectl get svc echo
kubectl run -i --rm --tty debug --image=takagotch/fundamental:0.1.0 --restart=Never -- bash -il
kubectl logs -f echo-summer-dtblk -c echo
curl http://echo.default.svc.local
curl http://echo.default
curl http://echo

kubectl get svc echo
curl http://127.0.0.1:31058

kubectl get svc echo
curl http://127.0.0.1:31058

kubectl apply -f \ https://xxx
kubectl -n ingress-nginx get service,pod
kubectl apply -f ingress.yaml
kubectl get ingress.yaml
curl http://localhost -H 'Host: ch05.takagotch.local'

curl http://localhost \
	-H '' \
	-H '' 
kubectl apply -f https://xxx

kubectl get pod -l app=nginx -w
docker image build -t takagotch/nginx:latest .
kubectl get pod -l app=nginx -w
kubectl api-version


gcloud components update
gcloud auth login
gclound config set project takagotch-kube-xxx
gclound config set compute/zone asia-norgheast1-a
gclound container clusters create takagotch --cluster-version=1.10.4-gke.2 \
	--machine-type=n1-standard-1 \
	--num-nodes=3
gclound container clusters get-credentials takagotch
kubectl get nodes
kubectl proxy
kubectx docker-for-desktop
kubectx -
kubens kube-system
kubectl get pod

kubectl apply -f storage-class-ssd.yaml

kubectl apply -f mysql-slave.yaml
kubectl get pod
kubectl exec -it mysql-master-0 init-data.sh
kubectl exec -it mysql-slave-0 bash

kubectl apply -f todo-api.yaml
kubectl get pod -l app=todoapi

kubectl apply -f todo-web.yaml

cp -R /todoweb/.nuxt/dist /
ls -l /dist
ls -l /var/www/_nuxt/
kubectl get svc todoweb
kubectl apply -f ingress.yaml
kubectl get ingress

ssh-keygen -t rsa
echo "" >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys

sysctl -w net.ipv4.ip_forward=1
pip install ansible netaddr
cd kubespray && git checkout v2.5.0
pip install -r requirements.txt
cp -rfp inventory/sample inventory/mycluster
declare -a IPS=(10.90.65.11.10 10.90.65.12 10.90.13 10.90.65.21)
CONFIG_FILE=inventory/mycluster/hosts.ini python3
contrib/inventory_builder/inventory.py ${IPS[@]}

ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml
kubectl get nodes

kubectl apply -f job.yaml
kubectl logs -l app=pingpong
kubectl get pod -l app=pingpong --show-all

kubectl apply -f cronjob.yaml
kubectl get job -l app=pingpong
kubectl logs -l app=pingpong
echo "your_username:$(openssl passwd -quiet -crypt your_password)" | base64

kubectl apply -f nginx-secret.yaml

kubectl apply -f basic-auth.yaml
curl http://127.0.0.1:30060
curl -i --user your_name:your_password http://127.0.0.1:30060

echo -n "" | base64
echo -n "" | base64


