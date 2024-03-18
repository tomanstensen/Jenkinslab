pipeline {
    
    agent any

    stages {

        stage('Build') {
            steps {
                dir('TrailRunner') {
                    bat 'mvn compile'
                }
            }
        }

        stage('Test') {
            steps {
                dir('TrailRunner') {
                    bat 'mvn test'
                }
            }
        }

         stage('Run Robotframe') {
            steps {
                dir('Selenium/InfotivCarRentalTesting') {
                    bat 'robot --nostatusrc tests.robot'
                }
            }
        }
    }

    post {

        always {
            jacoco execPattern: '**/TrialRunner/target/jacoco.exec'
            junit stdioRetention: '', testResults: 'TrailRunner/target/site/jacoco/*.xml'
        }

        failure {
            mail bcc: '', body: '', cc: '', from: '', replyTo: '', subject: 'Tests failed', to: 'tom.anstensen@iths.se'
        }
    }
}