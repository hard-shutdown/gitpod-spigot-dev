FROM gitpod/workspace-full

RUN sudo su -c "wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - sudo add-apt-repository 'deb https://apt.corretto.aws stable main'"
RUN sudo su -c "sudo apt-get update; sudo apt-get install -y java-17-amazon-corretto-jdk"
