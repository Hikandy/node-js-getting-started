node('label': 'cent') {
    stage('cloning the repo') {
        checkout scm
        sh 'echo $PWD'
    }
    stage('docker image build') {
        sh 'docker build -t node:current .'
        }
    stage('docker npm pull') {
        def npmcont = docker.image('node:current')
        npmcont.pull()
        npmcont.inside('-p 5000:5000') {
            sh 'npm install'
            sh 'npm start'
        }
    }
}


