# terraformFiles
# **IAC TO DEPLOY AKS**
This repo contains the file for automated deployment of k8s cluster in Azure.  
It uses modules to deploy exactly the same cluster for two enviroments: test and production.  
The user has to specifie the numer of nodes. This variable is used for both clusters.  
## **RUNNING**
To do the deployment, it is necessary to clone this repo. Once done that, run the following commands:  
> terraform init  
> terraform plan  

The last command verifies the steps for the excecution plan. The last command is:
> terraform apply  

Two files will be generated. This files corresponds to the kubeconfig cluster for both, test and prod (kubeconfigtest and kubeconfigprod).
Once the clusters are deployed, you can check it with the following command:  
> kubectl get nodes --kubeconfig kubeconfigprod  
