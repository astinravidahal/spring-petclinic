pipeline { 
agent any
     environment {
      JENKINS_VERSION = '1.2.30' 
   }
     Parameters {
          string {string(name: 'My_String' , default_value: 'hello' , Description:'hello this is my string parameter' ) } 
          boleanParam { BoleanParam((name: 'My_boolen_value' , default_value: 'True' , Description:'hello this is my boolean parameter' )}
                                    text  { text(name: 'My_Text' , default_value: 'hi' , Description:'hello this is my text parameter' )}
                                    password { password (name: 'Pswd' , default_value: 'Secret' , Description:'hello this is my password parameter' )}
                                    choice{ choice(name:'last_four_cellphone_number' , choices: ['5432', '6345' , '1020' ,'no_cellphone'])}
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
                  echo "my string name is : ${My_String} "
                  echo "my text name is : ${My_Text} "
                  echo "my Bolean_value name is : ${My_Boolen_value} "
                  echo "my password name is : ${Pswd} "
                  echo "my choices are : ${Last_four_cellphone_number} "
                  
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



