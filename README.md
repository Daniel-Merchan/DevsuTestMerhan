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
## ** TESTING THE CONTAINERIZED APP**
To test the functionality of the application you should use the command:  
curl -X POST \\  
-H "X-Parse-REST-API-Key: 2f5ae96c-b558-4c7b-a590-a501ae1c3f6c" \* \ \*  
-H "Content-Type: application/json" \* \ \*  
-d '{ "message" : "This is a test", "to": "Daniel Felipe Merchan PiEdra", "from": "Rita Asturia", "timeToLifeSec" : 45 }' \* \ \*  
https://danieltest-hjcectbpcsffc3dc.z01.azurefd.net/DevOps
## **CONTENTS**
At this point we will explain the most important components of the project, wich are the main requirements of the tech test:  

> 1.- The folder `__test__` contains the TDD file.  
> 2.- The `App.js` wich contains the code of our node js app.  
> 3.- The `Dockerfile` wich caontains tje commands to containerize the app.  
> 4.- The `azure-pipeline.yml` wich represents the CI/CD pipeline, this file will be explained in more detail later on.  
> 4.- The `manifests` folder, wich contains all the manifests to deploy th microservice in a k8s cluster.  
## **AZURE PIPELINE**
It is necessary to mention some important things of pipeline:  
> 1.- The pipeline is trigered by main or test branch. Depending of whether push of merge has been performed.
> 2.- Enviroments has been used for two reasons:  
To determine the cluster to be deployed to, since a cluster for each environment is deployed with iac. For subscription issues (deployment limitations), at the moment only one cluster is used for test and prod, but both environments have been tested.  
The second reason is for security, we are using approvals if we want to deploy in prod enviroment.  
