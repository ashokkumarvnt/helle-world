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

        stage("deploy-to-tomcat"){
            steps{
                sshagent(['ec2-user']) {
                sh"""
                  scp -o StrictHostKeyChecking=no target/myweb.war ec2-user@3.111.40.212:/opt/tomcat8/webapps/
                  ssh ec2-user@3.111.40.212 /opt/bin/shutdown.sh/
                  ssh ec2-user@3.111.40.212 /opt/bin/startup.sh/
                """    

            }
        }
    }
}
