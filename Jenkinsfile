node('label': 'cent') {
    stage('cloning the repo') {
        checkout scm
        sh 'echo $PWD'
    }
    stage('docker npm pull') {
        def npmcont = docker.image('node')
        npmcont.pull()
        npmcont.inside {
            sh 'npm install'
            sh 'npm start'
        }
    }
}


