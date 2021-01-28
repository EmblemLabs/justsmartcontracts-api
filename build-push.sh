. "./_Set_Google_Cluster.sh"
docker build . -t us.gcr.io/${CLUSTER}/justsmartcontractsapi $1
gcloud docker -- push us.gcr.io/${CLUSTER}/justsmartcontractsapi
cd k8s/
kubectl delete -f app.yaml
kubectl create -f app.yaml
cd ..