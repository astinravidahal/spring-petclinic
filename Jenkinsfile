pipeline { 
agent any 
   stages { 
      stage('test') {
         when {
            expression {
               BRANCH_NAME = 'FEATURE' } 
         } 
         steps {
            echo 'this is just the test' 
         }
      
      }
   }
      
  /* stage ('maven validate'){
    steps{
      sh 'mvn validate'
}
}
stage('maven test'){
steps {
 sh  'mvn test'
}
}

stage (' maven compile') { 
steps {
 sh 'mvn compile' 
}
}

stage ('mvn clean install'){
steps {
sh 'mvn clean install'
}
}  */
   
      
   
  post {
         always {
            echo "this is post stage code which no matter what displays all the time "
         }
      }
}



