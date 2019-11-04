cd ${WORKSPACE} && /home/jenkins/apache-maven-3.6.1/bin/mvn -DargLine="-Xms2g -Dconfig.resource=local.conf -Dorg.slf4j.simpleLogger.log.scala.slick=warn" clean package
