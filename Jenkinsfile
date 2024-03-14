Pipeline {
    agent any

    stages {

        stage("Checkout") {

            steps {
                checkout scm
                Git(branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/tomanstensen/Jenkinslab.git']])
            }
        }

        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..'
            }
        }

         stage('Run Robotframe') {

        }

         stage('Post RobotTests') {

        }
    }
}