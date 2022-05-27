node {
    stage('Testing') {
        withCredentials([usernamePassword(credentialsId: 'nitin-creds', passwordVariable: 'NITIN_CREDS_PSW', usernameVariable: 'NITIN_CREDS_USR')]) {
            sh """ 
              echo "building a docker file"
              docker build -t docker-image-nitin .
            """
        }
    }
}
