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
        stage ('Deploy') {
            steps {
               echo "Start of Stage Deploy"
               echo "Deploying...."
               echo "End of Stage Build"
           }
       }
   }
}