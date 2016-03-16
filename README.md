# Docker Sonar

This image contains a Sonar 5.4 installation with the following plugins

   * sonar-javascript-plugin-2.11
   * sonar-python-plugin-1.5
   * sonar-groovy-plugin-1.3.1
   * sonar-build-breaker-plugin-2.0

# Some useful commands:

    # Build the image
    $ docker build --tag="ehdez73/docker-sonar" .

    # Run a container
    $ docker docker run -d \
          -p 9000:9000 \
          --name="sonar" \
          ehdez73/docker-sonar

## Usage
* Browse to Sonar : [http://localhost:9000](http://localhost:9000)

        User: admin
        Password: admin

