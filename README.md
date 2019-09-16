##### Install Docker in Linux
##### Running a dockerised REST API app in Linux machine
##### Configure Jenkins to send Rest api request in JSON format using Https Plugin 
##### Write pipeline script to send the API request to perform some task in the remote application

#### How to run application [json] using docker (sample)
1. Install docker in Linux/Windows Machine
2. docker login and give credentials
3. docker pull dockervan/nagios-api
4. docker run -d  -p 0.0.0.0:8080:8080 dockervan/nagios-api

Now your application can be find in http://{ip}:8080
#### Next how to write a api-call with json input from CI (Refer :https://github.com/jenkinsci/http-request-plugin)

httpRequest (consoleLogResponseBody: true,
      contentType: 'APPLICATION_JSON',
      httpMode: 'POST',
      requestBody: command,
      url: "${machine}/_aliases",
      validResponseCodes: '200')

create a parameter with 'url' as variable and paste the script in jenkinsfile.groovy in pipeline

#### what will be the URL then??
Please refer this link: https://github.com/zorkian/nagios-api [Using the API ]

#### What's next??
Replace Nagios with block64 



---
10.30.ncrypt with unique password
json file = {server ip , svc_temp , 10.30}  // json file creation
json template : body: 
{
  "ip": "10.81.99.101",
  "domain": "block64.local",
  "username": "root",
   "password":  "node",
   "system_type": "nix",  for linux / win for windows
    "timeout": 90
}
 withEnv(["VAR_A=${line[0]}","VAR_B=${pass}"]){
    powershell label: '', script: ''' @{ ip= "$env:VAR_B"; domain= "block64.local"; username= "Administrator"; password= "$env:VAR_A"; system_type= "win"; timeout= 90 } | ConvertTo-Json -Compress '''
    
