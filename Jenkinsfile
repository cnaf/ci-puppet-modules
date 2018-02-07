#!/usr/bin/env groovy

pipeline {
  agent { label 'generic' }

  options {
    timeout(time: 1, unit: 'HOURS')
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  
  environment {
  	ARTIFACTS_DIR="${env.WORKSPACE}/puppet_artifacts"
  }

  stages {
    stage('analysis'){ 
      when {
          environment name: 'CHANGE_URL', value: ''
      }
      steps {
      	container('generic-runner'){
	        script {
	          withSonarQubeEnv{
	            def sonar_opts="-Dsonar.host.url=${SONAR_HOST_URL} -Dsonar.login=${SONAR_AUTH_TOKEN}"
	            sh "/opt/sonar-scanner/bin/sonar-scanner ${sonar_opts}"
	          }
	        }
        }
      }
    }

    stage('build') {
      steps {
        container('generic-runner'){
      	  sh "mkdir -p ${env.ARTIFACTS_DIR}"
          sh "sh build.sh"
        }
      }
    }
    
    stage('archive') {
      steps {
        container('generic-runner'){
          dir("${env.ARTIFACTS_DIR}"){
            archive '**'
          }
        }
      }
    }
 }

  post {
    unstable {
      slackSend color: 'danger', message: "${env.JOB_NAME} - #${env.BUILD_NUMBER} Unstable (<${env.BUILD_URL}|Open>)" 
    }

    failure {
      slackSend color: 'danger', message: "${env.JOB_NAME} - #${env.BUILD_NUMBER} Failure (<${env.BUILD_URL}|Open>)" 
    }

    changed {
      script{
        if('SUCCESS'.equals(currentBuild.currentResult)) {
          slackSend color: 'good', message: "${env.JOB_NAME} - #${env.BUILD_NUMBER} Back to normal (<${env.BUILD_URL}|Open>)"
        }
      }
    }
  }
}
