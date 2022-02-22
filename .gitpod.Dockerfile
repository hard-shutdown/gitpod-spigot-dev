FROM gitpod/workspace-base

RUN sudo apt-get update && sudo apt-get install java-common
RUN sudo curl -LO https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.deb
RUN sudo dpkg --install amazon-corretto-17-x64-linux-jdk.deb

# Install Maven
RUN sudo apt install wget ca-certificates
RUN sudo su -c "wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz -P /tmp && tar xf /tmp/apache-maven-*.tar.gz -C /opt && ln -s /opt/apache-maven-3.8.4 /opt/maven"
RUN sudo echo $"export M2_HOME=/opt/maven\n" >> /etc/profile.d/maven.sh
RUN sudo echo $"export MAVEN_HOME=/opt/maven\n" >> /etc/profile.d/maven.sh
RUN sudo echo $"export PATH=${M2_HOME}/bin:${PATH}\n" >> /etc/profile.d/maven.sh
RUN sudo chmod +x /etc/profile.d/maven.sh

RUN cd /home/gitpod && echo "alias mvn='JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 mvn'" >> .bashrc
