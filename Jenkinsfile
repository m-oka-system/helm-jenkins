pipeline {
  agent {
    kubernetes {
      yamlFile 'KubernetesPod.yaml'
    }
  }
  stages {
    stage('Run build') {
      steps {
        container('build') {
          sh './gcloud-builds-submit.sh'
        }
      }
    }
  }
}
