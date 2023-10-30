pipeline {
  agent any
  environment { 
    username = credentials('username')
    password = credentials('password')

  }
  stages {
    stage('version') {
      steps {
        sh 'pwsh --version'
      }
    }
    stage('hello') {
      steps {
        sh 'pwsh -command echo $($ENV:username)'
        sh 'pwsh test.ps1'
      }
    }
  }
}
