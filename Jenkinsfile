pipeline {
    agent any

    stages {

        stage('Install Backend') {
            steps {
                dir('backend') {
                    bat 'npm install'
                }
            }
        }

        stage('Build') {
            steps {
                echo "Build successful"
            }
        }

        stage('Deploy') {
            steps {
                bat '''
                set JENKINS_NODE_COOKIE=dontKillMe
                start "" node app.js

                exit 0
                '''
            }
        }
    }
}