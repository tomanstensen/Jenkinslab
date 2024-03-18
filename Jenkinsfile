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
            jacoco execPattern: '**/TrialRunner/target/jacoco.exec', inclusionPattern: '**/*.class', sourcePattern: '**/TrialRunner/src/main/java/se/iths'
            junit stdioRetention: '', testResults: '**/TrailRunner/target/surefire-reports/*.xml'
            robot archiveDirName: 'robot-plugin', outputPath: 'Selenium/InfotivCarRentalTesting', overwriteXAxisLabel: '', passThreshold: 70.0, unstableThreshold: 85.0 
        }

    }
}