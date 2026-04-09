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
                echo Stopping old app...
                call pm2 delete backend-app || echo No existing app

                echo Starting new app...
                call pm2 start backend\\app.js --name backend-app

                echo Saving PM2 process...
                call pm2 save

                exit 0
                '''
            }
        }
    }
}