#https://docs.dapr.io/operations/monitoring/logging/fluentd/

#By default, the chart creates 3 replicas which must be on different nodes. 
#If your cluster has fewer than 3 nodes, specify a smaller number of replicas. 
#For example, this sets the number of replicas to 1:
helm install elasticsearch elastic/elasticsearch --version 7.17.3 -n efk --set replicas=1

#Otherwise:
helm install elasticsearch elastic/elasticsearch --version 7.17.3 -n efk

#If you are using minikube or simply want to disable persistent volumes for 
#development purposes, 
#you can do so by using the following command:


