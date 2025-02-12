pipeline {
    agent any

    parameters {
        string(name: 'STUDENT_NAME', defaultValue: 'Ajinkya', description: 'Enter student name')
        choice(name: 'CITY', choices: ['Pune', 'goa', 'kerala', 'Bangalore'], description: 'Select city')
    }

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    checkout([$class: 'GitSCM',
                        branches: [[name: '*/main']],
                        userRemoteConfigs: [[
                            url: 'https://github.com/ajinkyamhasrup/linux.git',
                            credentialsId: 'Git' 
                        ]]
                    ])
                }
            }
        }

        stage('Run Shell Script') {
            steps {
                script {
                     sh 'chmod +x student_name.sh'
                sh "./student_name.sh \"${params.STUDENT_NAME}\" \"${params.CITY}\""
                }
            }
        }
    }
}      
