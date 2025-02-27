pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Vikash04IIITB/CalculatorProject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '/usr/local/bin/docker build -t calculator-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '/usr/local/bin/docker run --rm calculator-app'
            }
        }
    }
}
