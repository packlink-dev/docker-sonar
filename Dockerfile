# https://github.com/SonarSource/docker-sonarqube/tree/442f950dae232fca8e1e919e017270971cee46f6/5.4
FROM sonarqube:5.4
MAINTAINER Ernesto Hernandez "ehdez73@gmail.com"

ENV SERVICE_NAME="sonar"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins"

ADD http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/python/sonar-python-plugin/1.5/sonar-python-plugin-1.5.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.11.jar $PLUGIN_FOLDER
ADD https://sonarsource.bintray.com/Distribution/sonar-groovy-plugin/sonar-groovy-plugin-1.3.1.jar $PLUGIN_FOLDER

# COPY plugins /opt/sonarqube/extensions/plugins
