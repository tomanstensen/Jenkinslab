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

         stage('Post RobotTests') {
            steps {
                robot archiveDirName: 'robot-plugin', outputPath: 'Selenium/InfotivCarRentalTesting', overwriteXAxisLabel: ''
            }
        }
    }
    post {

        // always {
        //     junit '**/TrailRunner/target/site/jacoco/*.xml'
        // }

    }
}