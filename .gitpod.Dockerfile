FROM gitpod/workspace-base

RUN sudo apt-get update && sudo apt-get install java-common
RUN sudo curl -LO https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.deb
RUN sudo dpkg --install amazon-corretto-17-x64-linux-jdk.deb
RUN sudo apt-get install maven
