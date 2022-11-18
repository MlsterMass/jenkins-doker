pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('docker hub access')
        registry = "200319906117207/jenkins-doker"
        registryCredential = 'docker hub access'
    }
    options {
        skipStagesAfterUnstable()
    }
    stages {
         stage('Clone repository') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Build docker image') {
            steps {
                script{
                    app = docker.build(registry)
                }
            }
        }

        stage('Push docker image') {
            steps {
                script{
                    docker.withRegistry('', registryCredential) {
                        app.push("latest")
                    }
                }
            }
        }
    }
}

