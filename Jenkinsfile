node {
    stage('Git Checkout') {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ntnvi10/env-creds-scripted.git']]])
    }
    stage('Testing') {
        withCredentials([usernamePassword(credentialsId: 'nitin-creds', passwordVariable: 'NITIN_CREDS_PSW', usernameVariable: 'NITIN_CREDS_USR')]) {
            sh """ 
              echo "building a docker file"
              docker build --build-arg NITIN_CREDS_USR=${NITIN_CREDS_USR} --build-arg NITIN_CREDS_PSW=${NITIN_CREDS_PSW} -t docker-image-nitin .
            """
        }
    }
}
