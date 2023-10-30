#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

#OS: AWS AMI FEDORA
#https://docs.cloudbees.com/docs/cloudbees-ci/latest/traditional-install-guide/installing-operations-center#installing-on-red-hat-centos-fedora-or-amazon-linux-2
sudo wget -O /etc/yum.repos.d/cloudbees-core-oc.repo https://downloads.cloudbees.com/cloudbees-core/traditional/operations-center/rolling/rpm/cloudbees-core-oc.repo
sudo rpm --import "https://downloads.cloudbees.com/jenkins-operations-center/rolling/rpm/cloudbees.com.key"
sudo yum update
#sudo yum --assumeyes install epel-release
sudo yum install --assumeyes java-11-amazon-corretto-devel
sudo yum install --assumeyes cloudbees-core-oc


# vpc-06014f5cfca78f456 (sharmi-vpc)
# private subnet  subnet-0180bedce84eb1171
