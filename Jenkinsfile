pipeline {
   agent any

   stages { 
      stage('Build') {
	 steps { 
            sh '''
            touch test.txt
            echo Hi world |tee test.txt
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
           sh 'cp ./test.txt /tmp '
        }
    }
 }
}
