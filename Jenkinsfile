pipeline {
    agent any
     
    stages {
        stage ('checkout'){
            steps {
                git branch: 'master', url: 'https://github.com/sivaramap/Docker-Terraform'
            }
        }
      stage('Set Terraform path') {
            steps {
                script {
                    def tfHome = tool name: 'Terraform'
                    env.PATH = "${tfHome}:${env.PATH}"
                }
                sh 'terraform --version'
               }
        }
        
         stage('Build Image') {
            steps {
                dir("Docker-Terraform") 
                {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
             }
        }
        }
     
    }
}
