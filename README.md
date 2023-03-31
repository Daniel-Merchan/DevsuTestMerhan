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
At this point we will explain the most important components of the project:
> 1.- 