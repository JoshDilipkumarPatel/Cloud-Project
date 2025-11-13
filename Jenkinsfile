pipeline {
  agent any
  environment {
    DOCKER_REGISTRY = 'your-registry'
    APP_NAME = 'petshop-app'
  }
  stages {
    stage('Build Java Application') {
      steps {
        sh 'mvn -B package -f pom.xml'
      }
    }
    stage('Build & Push Docker Image') {
      steps {
        script {
          def dockerImage = docker.build("${DOCKER_REGISTRY}/${APP_NAME}:${env.BUILD_NUMBER}")
          docker.withRegistry("https://index.docker.io/v1/", 'dockerhub-credentials') {
            dockerImage.push()
          }
        }
      }
    }
    stage('Deploy to Kubernetes') {
      steps {
        withKubeConfig([credentialsId: 'kubeconfig']) {
          sh 'kubectl apply -f deployment.yaml'
          sh 'kubectl apply -f service.yaml'
        }
      }
    }
  }
}
