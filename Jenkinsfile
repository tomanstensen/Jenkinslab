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
        // success {
        //     dir('TrailRunner') {
        //         jacoco(
        //         execPattern: '**/target/*.exec',
        //         classPattern: '**/target/classes/se/iths',
        //         sourcePattern: '**/src/main/java/se/iths'
        //     )
        //     }
        // }
        always {

            jacoco classPattern: '**/TrailRunner/target/classes/se/iths', execPattern: '**/TrailRunner/target/*.exec', sourcePattern: '**/TrailRunner/src/main/java/se/iths'
            junit stdioRetention: '', testResults: '**/TrailRunner/target/surefire-reports/*.xml'
            robot archiveDirName: 'robot-plugin', outputPath: 'Selenium/InfotivCarRentalTesting', overwriteXAxisLabel: '', passThreshold: 70.0, unstableThreshold: 85.0 
        }

    }
}