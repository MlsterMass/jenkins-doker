pipeline {
    agent any
    	environment {
    		DOCKERHUB_CREDENTIALS=credentials('200319906117207/******')
    	}
    stages {
        stage('Test') {
            steps {
                sh """
                     chmod +x test-stage.sh
                     sh test-stage.sh
                """
            }
        }
        stage('Clone repository') {
            git credentialsId: 'github-access', url: 'https://github.com/MlsterMass/jenkins-doker.git'
        }

        stage('Build image') {
           dockerImage = docker.build("200319906117207/jenkins-docker:latest")
        }

         stage('Push image') {
                withDockerRegistry([ credentialsId: "docker hub access", url: "" ]) {
                dockerImage.push()
                }
            }
       }
    }
