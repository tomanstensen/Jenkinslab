pipeline {
    
    agent any

    stages {

        stage('Build') {
            steps {
                dir('TrailRunner') {
                    sh 'mvn compile'
                }
            }
        }

        stage('Test') {
            steps {
                echo 'testy!'
            }
        }

        stage('Deploy') {
            steps {
                echo 'deploy?'
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
}