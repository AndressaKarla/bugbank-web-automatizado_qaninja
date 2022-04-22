pipeline {
    agent {
        docker {
            image 'ruby:2.3.3'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building or Resolving Dependencies'
                sh 'rm -f Gemfile.lock'
                sh 'gem install bundler -v 2.0.2'
                sh 'bundle install' 
            }
        }
        stage('Test') {
            steps {
                echo 'Running Regression Tests'
                sh 'bundle exec cucumber -p ci'
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