pipeline { 
agent any
     environment {
      JENKINS_VERSION = '1.2.30' 
   }
   stages { 
       
      stage('test') {
        
          /*when {
            expression {
               BRANCH_NAME = 'FEATURE' } 
         } */
         steps {
            echo 'this is just the test' 
            echo "calling local variable version: ${JENKINS_VERSION} "
         }
      
      }
   
    
    
      stage('check_env_variable') {
         steps {
            echo "this is my Jenkins_verison: ${JENKINS_VERSION} "
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



