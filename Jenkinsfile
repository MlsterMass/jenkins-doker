pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Start of Stage Build"
                echo "Building..."
                echo "End of Stage Build"
            }
        }
        stage('Test') {
            steps {
                dir ('./') {
                    sh('./test-stage.sh')
                }
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