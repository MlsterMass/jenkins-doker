pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh """
                     chmod +x test-stage.sh
                     sh test-stage.sh
                """
            }
        }
        stage('Push') {
            steps {
                git credentialsId: 'github-access', url: 'https://github.com/MlsterMass/jenkins-doker.git'
                dockerImage = docker.build("200319906117207/jenkins-docker:latest")
                withDockerRegistry([ credentialsId: "docker hub access", url: "" ]) {
                dockerImage.push()
                }
            }
        }
   }
}
