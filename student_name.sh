pipeline {
    agent any
    parameters {
        string(name: 'STUDENT_NAME', defaultValue: 'Alice', description: 'Enter Student Name')
        string(name: 'CITY', defaultValue: 'New York', description: 'Enter City')
    }
    stages {
        stage('Run Shell Script with Parameters') {
            steps {
                sh """
                    #!/bin/bash
                    echo "Student Name: ${STUDENT_NAME}"
                    echo "City: ${CITY}"
                """
            }
        }
    }
}
