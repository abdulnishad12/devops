pipeline {
	agent any
	stages {
		stage ('Api call') {			
	steps { 
		echo "With nagios"
		script{
    def body = '{"host": "web01", "duration": 600}'
 def response =httpRequest (consoleLogResponseBody: true,
      contentType: 'APPLICATION_JSON',
      httpMode: 'GET',
      requestBody: null,
      url: "${url}",
      validResponseCodes: '200')
 echo ${response}
		}

	}
		}
	}
}
