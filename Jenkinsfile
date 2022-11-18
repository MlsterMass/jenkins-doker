pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('200319906117207/******')
        registry = "200319906117207/jenkins-doker"
        registryCredential = '200319906117207/******'
    }
    options {
        skipStagesAfterUnstable()
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