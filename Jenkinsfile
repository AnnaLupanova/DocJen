
pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhubaccount')
	}

	stages {

		stage('Build') {

			steps {
				sh 'sudo docker build -t annalupanova1999/jenkinstest:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'sudo docker push annalupanova1999/jenkinstest:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
