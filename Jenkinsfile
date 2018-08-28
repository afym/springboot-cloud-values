pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker-compose -f docker-build.yml up"
            }
        }

        stage('Deploy') {
            steps {
                sh "./scripts/deploy-docker-hub.sh"
            }
        }
    }
}