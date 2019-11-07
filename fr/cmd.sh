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

kubectl apply -f todo-api.yaml
kubectl get pod -l app=todoapi

<<<<<<< HEAD
kubectl apply -f todo-web.yaml
cp -R /todoweb/.nuxt/dist /
ls -l /dist
ls -l /var/www/_nuxt/

kubectl get svc todoweb
kubectl apply -f ingress.yaml
kubectl get ingress

ssh-keygen -t rsa
echo "ssh-rsa xxxx" >> ~/.ssh/authorized_keys
echo "ssh-rsa xxxx" >> ~/.ssh/authorized_keys
echo "ssh-rsa xxxx" >> ~/.ssh/authorized_keys
echo "ssh-rsa xxxx" >> ~/.ssh/authorized_keys

sysctl -w net.ipv4.ip_forward=1
pip install ansible netaddr
git clone https://github.com/kubernetes-incubator/kuberspray
cd kuberspray && git checkout v2.5.0

pip install -r requirements.txt
cp -rfp inventory/sample inventory/mycluster
declare -a IPS=(10.90.65.11.10.90.65.12 10.90.65.13 10.90.65.21)
CONFIG_FILE=inventory/mycluster/hosts.ini python3
contrib/inventroy_builder/inventory.py ${IPS[@]}

ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml
get nodes

kubectl describe pod -l app=echo-version
kubectl get pod app=echo-version
kubectl get pod -l app=echo-version


kubectl logs -f update-checker

kubectl apply -f echo-version-blue.yaml
kubectl apply -f echo-version-green.yaml

kubectl logs -f update-checker
kubectl patch service echo-version -p '{"spec": {"selector": {"color": "green"}}}'
=======
kubectl apply -f simple-jog.yaml
kubectl logs -l app=pingpong
kubectl get pod -l app=pingpong --show-all

kubectl apply -f simple-cronjob.yaml
kubectl get job -l app=pingpong
kubectl logs -l app=pingpong

echo "takagotch:$(openssl passwd -quiet -crypt password)" | base64


kubectl apply -f nginx-secret.yaml

kubectl apply -f basic-auth.yaml
curl http://127.0.0.1:30060
curl -i --user takagotch:password http://127.0.0.1:30060

echo -n "gihyo:gihyo@tcp(mysql-master:3306)/tododb?parseTime=true" | base64
echo -n "gihyo:gihyo@tcp{mysql-slave:3306}/tododb?parseTime=true" | base64

kubectl describe pod todoapi-xxxx

cat <<EOF | kubectl apply -f -
kind: ClusterRole
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  namea: pod-reader
rules:
- apiGroupsA: [""]
  resources: ["pod"]
  verbs: ["get", "watch", "list"]
EOF
cat <<EOF | kubectl apply -f -
apiVersion: rbac.uathorization.k8s.io/v1
metadata:
  name: pod-read-binding
subjects:
- kinds: ServiceAccount
  name: gihyo-user
  namespace: default
roleRef:
  kind: ClusterRole
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io
EOF

kubectl create serviceaccount takagotch
kubectl get serviceaccount gihyo-user -o yaml

kubectl get secret gihyo-user-token-dwmp -o yaml
echo 'xxxx' | base64 -D
kubectl config view
kubectl config set-credentials gihyo-user --token=xxxx
kubectl config set-context gihyo-k8s-gihyo-user --cluster=gihyo-k8s --user=gihyo-user
kubectl config use-context gihyo-k8s-gihyo-user

kuberctl get pod --all-namespaces
kubectl get deployment --all-namespaces
kubectl config use-context docker-for-desktop

cat <<EOF | kubectl apply -f -
apiVersion: v1
metadata:
  name: gihyo-pod-reader
  namespace: kube-system
EOF

cat <<EOF | kubectl apply -f -
kind: ClusterRoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: pod-reader-binding
subjects:
- kind: ServiceAccount
  name: gihyo-pod-reader
  namespace: kube-system
roleRef:
  kind: ClusterRole
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io
EOF

kubectl -n kube-system logs -f tk-pod-reader

kubectl -n kube-system logs f tk-pod-reader


kubectl config use-context docker-for-desktop
helm init
kubectl -n kube-system get service,deployment,pod --selector app=helm
helm version
helm init --upgrade
export TILLER_TAG=2.9.0
export TILLER_TAG=2.9.0
kubectl --namespace=kube-system set image deployments/tiller-deply \
	  tiller=gcr.io/kubernetes-helm/tiller:$TILLER_TAG

helm repo add incubator https://kubernetes-charts-incubator.storage.googleapi.com/
helm serach
helm install -f redmine.yaml --name redmine stable/redmine --version 4.0.0

helm ls
kubectl get service,deployment --selector release=redmine
helm upgrade -f redmine.yaml redmine stable/redmine --version 4.0.0
helm delete redmine
helm ls --all
helm rollback redmin 2
helm del --purge redmin
kubectl create serviceaccount tiller --namespace kube-system
kubectl create clusterrolebinding tiller-cluster-rule \
	--clusterrole=cluster-admin --serviceaccount-kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy \
	-p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

helm install -f jenkins.yaml --name jenkins stable/jenkins
kubectl describe sa,clusterrolebinding -l app=jenkins-jenkins

helm repo list
helm serve &
helm create echo
tree .

helm package echo
helm serach echo

helm install -f echo.yaml --name echo local/echo
kubectl get deployment,service, ingress --selector app=echo
curl http://localhost -H 'Host: ch06-echo.gihyo.local'


git clone git@github.com:gihyodocker/charts.git
cd charts
mkdir stable
helm create example
helm package example
helm repo index .
tree .
git add -A
git commit -m "add first chart"
git push origin gh-pages
curl -s https://gihyodocker.github.io/charts/stable/index.yaml
helm repo add gihyo-stable https://gihyodocker.github.io/charts/stable
helm repo update
helm search example
helm install --namespace default --name example gihyo-stable/example

kubectl logs -f update-checker
kubectl patch deployment echo-version \
	-p '{"spec":{"template":{"containers":[{"name":"echo-version", "image":"gihyodocker/echo-version:0.2.0"}]}}}'

kubectl get pod -l app=echo-version -w


>>>>>>> origin/master


