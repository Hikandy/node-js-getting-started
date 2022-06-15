node('label': 'cent') {
    stage('cloning the repo') {
        checkout scm
        sh 'echo $PWD'
    }
    stage('docker image build') {
        sh 'docker build -t node:current .'
        sh 'docker container run -p 5000:5000 node:current'
        }
    
}


