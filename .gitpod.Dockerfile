FROM gitpod/workspace-base

RUN sudo apt-get update && sudo apt-get install java-common
RUN sudo curl -LO https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.deb
RUN sudo dpkg --install amazon-corretto-17-x64-linux-jdk.deb
RUN sudo su -c "wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp && tar xf /tmp/apache-maven-*.tar.gz -C /opt && ln -s /opt/apache-maven-3.6.3 /opt/maven"

RUN cd /home/gitpod && echo "alias mvn='JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 mvn'" >> .bashrc
