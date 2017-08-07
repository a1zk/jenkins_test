pipeline {
   agent any

   stages { 
      stage('Build') {
	 steps { 
            sh '''
            touch test.txt
            echo Hi world |tee test.txt
	    mkdir -p /tmp/test
            '''
         }
      }
      stage('Test') {
         steps {
            sh 'cat test.txt'
         }
      }
     stage( 'Deploy' ) {
        steps {
           sh 'ansible-playbook /etc/ansible/deploy_test.yml -i /etc/ansible/hosts -u jenkins -s '
        }
    }
 }
}
