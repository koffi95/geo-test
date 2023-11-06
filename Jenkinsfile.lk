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
                script{
                    def mavenPom = readMavenPom file: 'pom.xml'
                    nexusArtifactUploader artifacts: 
                    [[artifactId: "${mavenPom.artifactId}", 
                    classifier: '', 
                    file: "target/${mavenPom.artifactId}-${mavenPom.version}.${mavenPom.packaging}", 
                    type: "${mavenPom.packaging}"]], 
                    credentialsId: 'NexusID', 
                    groupId: "${mavenPom.groupId}", 
                    nexusUrl: '198.58.119.40:8081', 
                    nexusVersion: 'nexus3', 
                    protocol: 'http', 
                    repository: 'koffi-2', 
                    version: "${mavenPom.version}"
                }
            }

        }
    }
}