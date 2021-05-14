pipeline { 
agent any
     environment {
      JENKINS_VERSION = '1.2.30' 
   }
     parameters {
          string(name: 'My_String' , defaultvalue: 'hello' , description:'hello this is my string parameter' )  
          booleanParam(name: 'My_boolen_value' , defaultvalue: 'True' , description:'hello this is my boolean parameter' )
                                    text(name: 'My_Text' , defaultvalue: 'hi' , description:'hello this is my text parameter' )
                                     password (name: 'Pswd' , defaultvalue: 'Secret' , description:'hello this is my password parameter' )
                                     choice(name:'last_four_cellphone_number' , choices: ['5432', '6345' , '1020' ,'no_cellphone'], description:'select your choices')
     }
   stages { 
       
      stage('test') {
        
       /*  when {
            expression {
               BRANCH_NAME = 'FEATURE' } 
         } */
         steps {
            echo 'this is just the test' 
            echo "calling local variable version: ${JENKINS_VERSION} "
         }
      
      }
        
        stage('check_parameters') {
             steps {
                  echo "my string name is : ${params.My_String} "
                  echo "my text name is : ${params.My_Text} "
                  echo "my Bolean_value name is : ${params.My_Boolen_value} "
                  echo "my password name is : ${params.Pswd} "
                  echo "my choices are : ${params.Last_four_cellphone_number} "
                  
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



