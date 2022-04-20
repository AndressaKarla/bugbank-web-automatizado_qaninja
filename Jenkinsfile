pipeline {
    agent {
        docker {
            image 'ruby:2.3-alpine'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building or Resolving Dependencies'
                sh 'bundle install' 
            }
        }
        stage('Test') {
            steps {
                echo 'Running Regression Tests'
            }
        }
        stage('UAT') {
            steps {
                echo 'Wait for User Acceptance'
                input(message: 'Go to production', ok: 'Yes')
            }
        }
        stage('Prod') {
            steps {
                echo 'WebApp is Ready :)'
            }
        }
    }
}