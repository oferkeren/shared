cd /home/jenkins/CCMService |
xargs mvn -DargLine="-Xms2g -Dconfig.resource=local.conf -Dorg.slf4j.simpleLogger.log.scala.slick=warn" clean package
