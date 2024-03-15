pipeline {
    
    agent any

    stages {

        stage('Build') {
            steps {
                sh "mvn compile"
            }
        }
        stage('Test') {
            steps {
                sh "mvn test"
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploy?'
            }
        }

         stage('Run Robotframe') {
            steps {
                echo 'run robot'
            }
        }

         stage('Post RobotTests') {
            steps {
                echo 'post robot'
            }
        }
    }
}