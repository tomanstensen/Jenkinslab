pipeline {
    
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
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