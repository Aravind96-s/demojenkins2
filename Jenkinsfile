pipeline {
    agent any

    stages {

        stage('Install Backend') {
            steps {
                dir('backend') {
                    bat 'npm install'
                    'npm install -g pm2'
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
                pm2 delete backend-app || echo "New instance"
                pm2 start app.js --name "backend-app"
                exit 0
                '''
            }
        }
    }
}