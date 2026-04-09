pipeline {
    agent any

    stages {

        stage('Install Backend Dependencies') {
            steps {
                dir('backend') {
                    bat 'npm install'
                }
            }
        }

        stage('Install PM2') {
            steps {
                bat 'npm install -g pm2'
            }
        }

        stage('Build') {
            steps {
                echo "Build successful"
            }
        }

        stage('Deploy') {
            steps {
                  echo Starting app...
                  cd /d C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\demo1
                  start /B node app.js

            }
        }
    }
}