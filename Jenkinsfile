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
                echo "------------ Test Started -----------"
                result=`grep "SERVER_ADDR" src/index.php| wc -l`
                echo $result
                if [ "$result" = "       1" ]
                then
                   echo "Test Ok"
                else
                   echo "Test failed"
                   exit 1
                fi
                echo "----------- Test finished -----------"
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