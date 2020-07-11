From centos:latest
run yum install wget -y
run yum install net-tools -y


run wget -O /etc/yum.repos.d/jenkins.repo  https://pkg.jenkins.io/redhat-stable/jenkins.repo
run rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
run yum upgrade -y
run yum install java -y
run yum install jenkins -y
run yum install git -y
run echo "jenkins ALL=(ALL) NOPASSWD:ALL">>/etc/sudoers
run yum install python3 -y

RUN touch /etc/yum.repos.d/kubernetes.repo
RUN echo $'[kubernetes]\n\
          name=Kubernetes\n\
          baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64\n\
          enabled=1\n\
          gpgcheck=1\n\
          repo_gpgcheck=1\n\
          gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg' >> /etc/yum.repos.d/kubernetes.repo


RUN yum install -v -y kubectl

COPY ca.crt /root/.kube/ca.crt
COPY client.crt /root/.kube/client.crt
COPY client.key /root/.kube/client.key


COPY  config    /root/.kube/config

EXPOSE 8080
CMD java -jar /usr/lib/jenkins/jenkins.war
