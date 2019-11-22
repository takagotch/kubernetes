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

kubectl apply -f todo-api.yaml
kubectl get pod -l app=todoapi

kubectl apply -f todo-web.yaml

cp -R /todoweb/.nuxt/dist /
ls -l /dist
ls -l /var/www/_nuxt/
kubectol get svc todoweb

kubect apply -f ingress.yaml
kubect get ingress


ssh-keygen -t rsa
echo "" >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys

sysctl -w net.ipv4.ip_forward=1
pip install ansible netaddr
git clone https://github.com/kubernetes-incubator/kubespray
cd kubespray && git checkout v2.5.0
pip install -r requirements.txt
cp -rfp inventory/sample inventory/mycluster
declare -a IPS=()
CONFIG_FILE=inventory/mycluster/hosts.ini python3
contrib/inventory_builder/inventory.py $(IPS[@])
ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml
kubectl get nodes

kubectl apply -f job.yaml
kubectl logs -l app=tky
kubectl get pod -l app=tky --show-all

kubectl apply -f cronjob.yaml
kubectl get job -l app=tky
kubectl logs -l app=tky

echo "your_username:$(openssl passwd -quiet -crypt your_password)" | base64

kubectl apply -f nginx-secret.yaml

kubectl apply -f basic-auth.yaml
curl http://127.0.0.1:30060
curl -i --user tky:pswd http://127.0.0.1:30060

echo -n "takagotch:takagotch@tcp(mysql-master:3306)/tododb?parseTime=true" | base64
echo -n "takagotch:takagotch(mysql-slave:3306)/tododb?parseTime=true" | base64

kubectl describe pod todoapi-xxx



cat <<EOF
EOF

cat <<EOF
EOF

kubectl create serviceaccount takagotch-user
kubectl get serivceaccount takagotch-user -o yaml
kubectl get sercret takagotch-user-token-dwwmp -o yaml
echo '' | base64 -D
kubectl config view
kubectl config set-credentials takagotch-user --token=xxx
kubectl config set-context takagotch-k8s-takagotch-user --cluster=takagotch-k8s --user=takagotch-user
kubectl config use-context takagotch-k8s-takagotch-user
kubectl get pod --all-namespaces
kubectl get deployment --all-namespaces
kubectl config use-context docker-for-desktop

cat <<EOF | kubectl apply -f -
EOF
cat <<EOF | kubectl apply -f -
EOF




