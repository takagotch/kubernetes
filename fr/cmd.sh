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




