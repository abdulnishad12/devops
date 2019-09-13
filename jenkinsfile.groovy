pipeline {
	agent any
	stages {
		stage ('Api call') {			
	steps { 
		echo "With nagios"
		script{
    def body = '{"host": "web01", "duration": 600}'
 def response = httpRequest acceptType: 'APPLICATION_JSON', contentType: 'APPLICATION_JSON', httpMode: 'GET', requestBody: patchOrg, url: "${url}"
 echo ${response}
		}

	}
		}
	}
}
