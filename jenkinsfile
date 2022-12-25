pipeline{
    agent any
    stages{
        stage("git checkout"){
            steps{
                git branch: 'main', url: 'https://github.com/ashokkumarvnt/helle-world.git'
            }
        
        }
        stage("maven build"){
            steps{
                sh "mvn clean package"
            }
        }
    }
}
