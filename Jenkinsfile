pipeline{
    agent any
    tools {
        maven 'M2_HOME'
    }
    stages{
        stage('check pwd'){
            steps{
                sh 'pwd'
            }

        }
        stage('maven build'){
            steps{
                sh 'mvn clean install package'
            }

        }
        stage('upload artifact to nexus'){
            steps{
                nexusArtifactUploader artifacts: 
                [[artifactId: '${POM_ARTIFACTID}', 
                classifier: '', 
                file: 'target/${POM_ARTIFACTID}-${POM_VERSION}.${POM_PACKAGING}', 
                type: '${POM_PACKAGING}']], credentialsId: 'NexusID', 
                groupId: '${POM_GROUPID}', 
                nexusUrl: '198.58.119.40:8081', 
                nexusVersion: 'nexus3', 
                protocol: 'http', 
                repository: 'koffi-2', 
                version: '${POM_VERSION}'
            }

        }
    }
}