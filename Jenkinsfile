
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew clean build'
            }
        }

        stage('Docker Check') {
            steps {
                sh 'docker --version'
                sh 'docker compose version'
            }
        }
    }

    post {
        success {
            echo 'Student API pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the console output.'
        }
    }
}

