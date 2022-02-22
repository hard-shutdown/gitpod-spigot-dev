FROM gitpod/workspace-full

RUN sudo su -c "cd /usr && curl -LO https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz"