node {   
    stage('Clone repository') {
        git credentialsId: 'git', url: 'https://github.com/Monishamacharla/reactapp'
    }
    
    stage('Build image') {
       dockerImage = docker.build("monishavasu/my-react-app:latest")
    }
    
 stage('Push image') {
        withDockerRegistry([ credentialsId: "dockerhubaccount", url: "" ]) {
        dockerImage.push()
        }
    }    
}