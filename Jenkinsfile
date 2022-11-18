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
        stage('Test') {
            steps {
                sh '''
                     chmod +x test-stage.sh
                     sh test-stage.sh
                '''
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
                app = sh (
                    script: '''
                         docker build -t shanem/spring-petclinic:latest .
                     '''
            }
        }
        stage('Push docker image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        app.push("latest")
                    }
                }
            }
        }
    }
}