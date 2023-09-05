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
     
    }

}