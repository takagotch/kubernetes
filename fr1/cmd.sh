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



