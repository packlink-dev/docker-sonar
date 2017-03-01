FROM sonarqube:6.2
MAINTAINER Ernesto Hernandez "ehdez73@gmail.com"

EXPOSE 9000

ENV SERVICE_NAME="sonar"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins"

# Add language plugins
ADD https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.0.699.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-groovy-plugin/sonar-groovy-plugin-1.4.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-4.6.0.8784.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.21.0.4409.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-php-plugin/sonar-php-plugin-2.9.2.1744.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-python-plugin/sonar-python-plugin-1.7.0.1195.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.0.699.jar $PLUGIN_FOLDER
ADD https://github.com/QualInsight/qualinsight-plugins-sonarqube-smell/releases/download/qualinsight-plugins-sonarqube-smell-4.0.0/qualinsight-sonarqube-smell-plugin-4.0.0.jar $PLUGIN_FOLDER
ADD https://github.com/racodond/sonar-gherkin-plugin/releases/download/1.3/sonar-gherkin-plugin-1.3.jar $PLUGIN_FOLDER


 Add other plugins - DISABLED
# ADD https://github.com/SonarQubeCommunity/sonar-build-breaker/releases/download/2.0/sonar-build-breaker-plugin-2.0.jar $PLUGIN_FOLDER
# ADD https://github.com/ehdez73/sonar-scala-plugin/releases/download/0.3.0-SNAPSHOT/sonar-scala-plugin-0.3.0-SNAPSHOT.jar $PLUGIN_FOLDER

