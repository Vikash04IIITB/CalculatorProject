pipeline {
    agent any
    
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Vikash04IIITB/CalculatorProject.git'
            }
        }

        stage('Compile Code') {
            steps {
                sh 'javac -cp .:junit-jupiter-api-5.7.1.jar Calculator.java CalculatorTest.java'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'java -cp .:junit-platform-console-standalone-1.7.1.jar:junit-jupiter-api-5.7.1.jar:junit-jupiter-engine-5.7.1.jar:apiguardian-api-1.1.0.jar org.junit.platform.console.ConsoleLauncher --select-class CalculatorTest'
            }
        }
    }
}
