pipeline {
  agent any
  environment { 
    username = 'username'
    password = 'password'

  }
  stages {
    stage('version') {
      steps {
        sh 'pwsh --version'
      }
    }
    stage('hello') {
      steps {
        sh 'pwsh test.ps1'
      }
    }
  }
}
