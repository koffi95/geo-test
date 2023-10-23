pipeline{
    agent any
    tools {
        maven 'M2_HOME'
    }
    stages{
        stage('maven build'){
            steps{
                sh 'pwd'
            }

        }
            stage('maven build'){
            steps{
                sh 'mvn clean install package'
            }

        }
        stage('list dir'){
            steps{
                sh 'ls'
            }

        }
    }
}