pipeline{
    agent any
    stages{
        stage('maven clean'){
            steps{
              mvn clean
            }
        }
        stage('maven install'){
            steps{
               mvn install
            }
        }
         stage('maven package'){
            steps{
                mvn package
            }
        }
     
    }

}