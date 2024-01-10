pipeline {
    agent { label 'any' }
  
    environment {
        registry = ""
        dockerContainerName_API = 'AKVT.Raspisanie-API-Dev'
        dockerContainerName_WEB = 'AKVT.Raspisanie-WEB-Dev'
        dockerImageName_API = 'yomaya/akvt.raspisanie.api:dev'
        dockerImageName_WEB = 'yomaya/akvt.raspisanie.web:dev'
        PROJECT_API = './API/'
        PROJECT_WEB = './WEB/'
    }

    stages {
        stage('Build API') {
            agent {
                label 'agent-for-projectA'
            }
            steps {
                script {
                    // ���� ��� ������ ������� API
                    dir("${PROJECT_API}") {
                        sh 'docker build -t ${dockerImageName_API} .'
                    }
                }
            }
        }

        stage('Build WEB') {
            agent {
                label 'agent-for-projectB'
            }
            steps {
                script {
                    // ���� ��� ������ ������� WEB
                    dir("${PROJECT_WEB}") {
                        sh 'docker build -t ${dockerImageName_WEB} .'
                    }
                }
            }
        }

        stage('Clean and Start Docker Compose') {
            steps {
                script {
                    // ��������� � �������� ����������� �� �� ������
                    sh "docker container stop ${dockerContainerName_API} || true"
                    sh "docker container stop ${dockerContainerName_WEB} || true"
                    sh "docker container rm ${dockerContainerName_API} || true"
                    sh "docker container rm ${dockerContainerName_WEB} || true"

                    // ������ Docker Compose
                    sh 'docker-compose -f ./docker-compose.yml up -d'
                }
            }
        }
    }
}