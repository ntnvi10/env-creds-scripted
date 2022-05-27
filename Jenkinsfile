node {
    stage('Git Checkout') {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ntnvi10/env-creds-scripted.git']]])
    }
    stage('Testing') {
        withCredentials([usernamePassword(credentialsId: 'nitin-creds', passwordVariable: 'NITIN_CREDS_PSW', usernameVariable: 'NITIN_CREDS_USR')]) {
            sh """ 
              echo "building a docker file"
              docker build -t docker-image-nitin .
            """
        }
    }
}
