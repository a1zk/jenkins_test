pipeline {
   agent any

   stages { 
      stage('Build') {
	 steps { 
            properties([pipelineTriggers([[$class: 'GitHubPushTrigger'], pollSCM('H/15 * * * *')
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
           sh 'cp ./test.txt /tmp/test '
        }
    }
 }
}
