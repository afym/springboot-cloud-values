pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker-compose -f docker-build.yml up"
            }
        }
    }
}