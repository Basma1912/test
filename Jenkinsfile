pipeline {
  agent any
  environment { 
    username = 'credentials'
    password = 'credentials'

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
