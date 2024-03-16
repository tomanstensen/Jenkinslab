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
                    robot --tests.robot
                }
            }
        }
    }

    // post {

    //     always {
    //         junit '**/TrailRunner/target/site/jacoco/*.xml'
    //         robot archiveDirName: 'robot-plugin', outputPath: 'Selenium/InfotivCarRentalTesting', overwriteXAxisLabel: ''
    //     }
    // }
}