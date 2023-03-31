# **DEVOPS TECHNICAL ASSESMENT**
The present project is the solution for technical challenge propouse by DevSu.
The first part, is a simple containerized micoreservice written using node js has been developed. It has a REST endpoint named /DevOpsv and uses a HTTP POST method to return a simple message.  

JSON PAYLOAD EXAMPLE:
 {
“message” : “This is a test”,
“to”: “Juan Perez”,
“from”: “Rita Asturia”,
“timeToLifeSec” : 45
}
JSON RESPONSE EXAMPLE :
{ “message” : “Hello Juan Perez your message will be send” }
## **CONTENTS**
At this point we will explain the most important components of the project, wich are the main requirements of the tech test:  

> 1.- The folder `__test__` contains the TDD file.  
> 2.- The `App.js` wich contains the code of our node js app.  
> 3.- The `Dockerfile` wich caontains tje commands to containerize the app.  
> 4.- The `azure-pipeline.yml` wich represents the CI/CD pipeline, this file will be explained in more detail later on.  
> 4.- The `manifests` folder, wich contains all the manifests to deploy th microservice in a k8s cluster.  
## **AZURE PIPELINE**
