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
                bat '''
                echo Running deploy script...
                call deploy.bat
                cd /d C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\demo
                start /B node app.js
                exit 0
                '''
            }
        }
    }
}