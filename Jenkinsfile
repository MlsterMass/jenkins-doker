pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                    {
                        sh """
                             #!/bin/bash -ex
                             chmod +x test-stage.sh
                             test-stage.sh
                        """
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