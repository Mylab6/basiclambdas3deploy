FROM amazonlinux:latest
RUN yum install python37 -y
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli
RUN yum install zip -y
RUN curl --silent --location https://rpm.nodesource.com/setup_12.x |  bash -
RUN yum install nodejs -y
RUN yum install gcc-c++ make -y
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo |  tee /etc/yum.repos.d/yarn.repo
RUN yum install yarn -y
# then you need to zip your function and push it 