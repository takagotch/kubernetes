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


