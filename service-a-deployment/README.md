1. kubectl create namespace service-xiaofangyu
2. helm install service-a-deployment . -f values.yaml
3. kubectl port-forward pod/<podname> 8888:8888
4. curl http://127.0.0.1:8888/api/v1/features