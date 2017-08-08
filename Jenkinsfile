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
            def workdir = pwd ()
            sh '''
            docker build $workdir/Dockerfile -t apache:alex
            '''
         }
      }
      stage('Test') {
         steps {
            sh 'docker ps '
         }
      }
     stage( 'Deploy' ) {
        steps {
           sh '''
           docker push localhost:5000/apache:alex
           ansible-playbook /etc/ansible/deploy_test.yml -i /etc/ansible/hosts -u jenkins -s
           '''
        }
    }
 }
}
