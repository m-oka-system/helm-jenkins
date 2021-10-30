pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: ruby
            image: ruby:2.6.6
            command:
            - cat
            tty: true        
        '''
    }
  }
  stages {
    stage('Run ruby') {
      steps {
        container('ruby') {
          sh '''
          echo Testing
          id
          cat /etc/os-release
          cat /etc/passwd
	  ruby -v
          '''
        }
      }
    }
  }
}
