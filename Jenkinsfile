pipeline {
    agent any
    tools{
        maven '3.9.3'
    }
    stages{
        stage('Build'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cissecodeur/gestions-exceptions']])
                sh 'mvn clean install'
            }
        }

        stage('Build docker image'){
            steps{
                scripts{
                    sh 'docker build -t gestions-exceptions/sa-backend .'
                }
            }
        }

        stage('Push docker image to docker hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerHubPwd', variable: 'dockerHubPwd')]) {
                   sh 'docker login -u rcodeur -p ${dockerHubPwd}'
                  }

                  sh 'docker push gestions-exceptions/sa-backend'
                }
            }
        }
    }
}