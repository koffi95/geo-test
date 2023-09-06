pipeline{
    agent any
    tools{
        maven 'M2_HOME'
    }
    stages{
        stage('maven clean'){
            steps{
              sh 'mvn clean'
            }
        }
        stage('maven install'){
            steps{
              sh 'mvn install'
            }
        }
         stage('maven package'){
            steps{
                sh 'mvn package'
            }
        }
         stage('upload artifact'){
            steps{
                sh 'curl -v -u admin:devops --upload-file target/bioMedical-0.0.2-SNAPSHOT.jar "http://198.58.119.40:8081/repository/koffi-repo/"'
            }
         }
    }

}