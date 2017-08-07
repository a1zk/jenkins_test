pipeline {
   agent any

   stages { 
      stage('Build') {
	 steps { 
            sh 'touch "1.txt"'
            echo 'Hi world' > 1.txt
         }
      }
      stage('Test') {
         steps {
            sh 'cat 1.txt'
         }
      }
     stage( 'Deploy' ) {
        steps {
           sh 'cp ./1.txt /home/alex/ '
        }
    }
 }
}
