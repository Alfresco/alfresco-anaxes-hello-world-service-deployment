# Anaxes Hello World Service

This Helm chart provides an example deployment of the Anaxes Hello World Service. 

The back end service consists of a simple REST API to retrieve a welcome message from a database.

The chart is intended to serve as an example of how a team should build, package and deploy to Kubernetes clusters using Anaxes artifacts and best practices.

A Deployment is used to create a Deployment for the REST API. 

A Service is used to create a gateway to the back end REST API pods running in the deployment.

An Ingress is used to rewrite the paths of the service and offer externally through one common service.

This chart depends on the following charts to provide the database and ingress path rewrites:
- Postgresql - [https://github.com/kubernetes/charts/tree/master/stable/postgresql](https://github.com/kubernetes/charts/tree/master/stable/postgresql)
- Nginx Ingress - [https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress](https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress)

You can deploy this chart to a minikube or AWS cluster with `helm install hello-world-service`

Once deployed you can use the `get-backend-url.sh` script to get the publicly accessible URL for the REST API.