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
