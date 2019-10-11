job("${PROJECT}-${ENV}-DSLCodeStability") {
  description('Code Stability')
  logRotator {
        daysToKeep(60)
        numToKeep(20)
        artifactDaysToKeep(1)
    }
    scm {
        git {
      remote {
        url("$REPOSITORY")
      }
      branch("*/$BRANCH")
     }
    }
    steps {
       maven {
         mavenInstallation("${MAVENAME}")
         goals("${MVNGOALS}")
         rootPOM("${POMRELATIVEPATH}/pom.xml")
  }
  }
}
