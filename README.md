Step1: Docker File: 
1.	image - ubuntu:xenial
2.	Install the httpd php packages and uncompress the mediawiki tar file provide the entrypoint and cmd in dockerfile

Below are the location for dockerfile 
mediawiki-docker/Dockerfile

Build the docker file and upload into dockerhub


Step2: helm3 setup on Localhost

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 $ chmod 700 get_helm.sh $ ./get_helm.sh

Step3:  Install kubectl 

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl chmod +x kubectl

mv kubectl /usr/local/bin/

Step4: 

Setup Ingress controller for K8s Cluster using Helm3

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx helm install my-release ingress-nginx/ingress-nginx

Create the Helm charts for mysql and mediawiki Path of helm charts - helm/mysql/ helm/mediawiki

Step5: 
helm install -f helm/mysql/values.yaml mysql helm/mysql 
helm install -f helm/mediawiki/values.yaml mediawiki helm/mediawiki


Step6: for the user input have been created opetion to insert the deployment type (BlueGreen/RollingUpgrade)
