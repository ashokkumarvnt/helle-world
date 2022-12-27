pipeline{
    agent any
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/ashokkumarvnt/helle-world.git'
            }
         }        
       stage('Build'){
            steps{
                sh 'mvn clean package'
            }
         }
    }
}
