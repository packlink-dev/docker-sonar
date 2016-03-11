FROM ehdez73/docker-jdk8
MAINTAINER Ernesto Hernandez "ehdez73@gmail.com"

EXPOSE 9000

RUN echo "deb http://downloads.sourceforge.net/project/sonar-pkg/deb binary/" >> /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y --force-yes sonar

COPY plugins /opt/sonar/extensions/plugins

CMD ["/opt/sonar/bin/linux-x86-64/sonar.sh","console"]
