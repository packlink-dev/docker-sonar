# Docker Sonar

This image contains a Sonar 5.4 installation with the following plugins

   * sonar-java-plugin-4.6.0.8784
   * sonar-javascript-plugin-2.21.0.4409
   * sonar-python-plugin-
   * sonar-groovy-plugin-1.4
   * sonar-php-plugin-2.9.2.1744
   * qualinsight-sonarqube-smell-plugin-4.0.0

# Some useful commands:

    # Build the image
    $ docker build --tag="ehdez73/docker-sonar" .

    # Run a container
    $ docker docker run -d \
          -p 9000:9000 \
          --name="sonar" \
          -e SERVICE_9000_NAME=sonar
          ehdez73/docker-sonar

## Usage
* Browse to Sonar : [http://localhost:9000](http://localhost:9000)

        User: admin
        Password: admin

