FROM "jenkins/jenkins"
USER root

RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs maven && \
    npm install sfdx-cli

USER jenkins