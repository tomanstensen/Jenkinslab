Pipeline {
    agent any

    stages {

        stage("checkout") {

            steps {
                checkout scmGit(branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/tomanstensen/Jenkinslab.git']])
            }
        }

        stage("build") {

        }

        stage("test") {

        }

        stage("post test") {

        }
    }
}