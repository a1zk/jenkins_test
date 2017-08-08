pipeline {
   agent any

   stages {
      stage ( 'Checkout' ) {
        steps {
           checkout scm
        }
      }
      stage('Build') {
	 steps { 
            sh '''
            docker build -f $(pwd)/Dockerfile -t apache:alex .
            '''
         }
      }
      stage('Test') {
         steps {
            sh 'docker images '
         }
      }
     stage( 'Deploy' ) {
        steps {
           sh '''
           docker tag apache:alex localhost:5000/apache_8ways
           docker push localhost:5000/apache_8ways
           ansible-playbook /etc/ansible/deploy_test.yml -i /etc/ansible/hosts -u jenkins -s -vvv
           '''
        }
    }
 }
}
