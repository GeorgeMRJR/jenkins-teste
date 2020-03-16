pipeline {
   agent any

   stages {
      stage('build') {
         steps {
            sh "bundle install"
         }
      }
      stage("Tests"){
          steps{
              sh "echo 'simulando um teste automatizado'"
          }
      }
   }
}
