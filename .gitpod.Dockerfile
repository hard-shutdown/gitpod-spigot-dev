FROM gitpod/workspace-base

RUN sudo apt-get update && sudo apt-get install java-common
RUN sudo curl -LO https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.deb
RUN sudo dpkg --install amazon-corretto-17-x64-linux-jdk.deb
RUN sudo su -c "apt update && apt install maven"

RUN cd /home/gitpod && echo "alias mvn='JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 mvn'" >> .bashrc
