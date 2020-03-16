pipeline {
   agent {
      docker{
         image  "ruby"
      }
   }

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
