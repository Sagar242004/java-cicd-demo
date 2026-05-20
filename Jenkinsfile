pipeline {
    agent any

    triggers {
        cron('H/2 * * * *')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Sagar242004/java-cicd-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t java-cicd-demo .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                docker rm -f java-app || true
                docker run --name java-app java-cicd-demo
                '''
            }
        }
    }
}
