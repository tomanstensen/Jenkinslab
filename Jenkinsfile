Pipeline {
    
    agent any

    stages {

        stage('Checkout') {

            steps {
                Git 'https://github.com/tomanstensen/Jenkinslab.git'
            }
        }

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
                
            }
        }

         stage('Run Robotframe') {
            steps {

            }

        }

         stage('Post RobotTests') {
            steps {

            }

        }
    }
}