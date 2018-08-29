pipeline {
    agent any

    stages {
        stage('Build Application') {
            steps {
                sh "docker-compose -f docker-build.yml up"
            }
        }

        stage('Build Image') {
            steps {
                sh "chmod +x scripts/deploy-docker-hub.sh && ./scripts/deploy-docker-hub.sh"
            }
        }

        stage('Publish') {
            steps {
                withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                    sh 'docker push angelfym/cloud-values:latest'
                }
            }
        }

    }
}