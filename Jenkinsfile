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
                echo Killing old node process...
                taskkill /F /IM node.exe || echo No process

                echo Starting full stack app...
                start "" cmd /k "cd /d C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\demo\\backend && node app.js"

                exit 0
                '''
            }
        }
    }
}