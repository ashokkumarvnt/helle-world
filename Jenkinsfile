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
                sh "mv target/*.war target/myweb.war"
            }
        }
        stage("docker build"){
            sh "docker build . -t ashokkumarvnt/myweps:v1"
        }
            
        stage("dockerpush"){
            sh "docker login -u ashokkumarvnt -p Pappu@360"
            sh "docker push ashokkumarvnt/myweps:v1"
        }
        
    }
}
