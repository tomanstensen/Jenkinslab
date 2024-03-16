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
                echo 'run Forrest, run!'
            }
        }

         stage('Post RobotTests') {
            steps {
                echo 'post robot apocalypse'
            }
        }
    }
    post {
        always {
            junit '**/TrailRunner/target/site/jacoco/*.xml'
        }
    }
}