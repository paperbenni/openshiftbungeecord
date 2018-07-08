FROM atbentley/nss-wrapper:centos7

ENV USER_NAME=atbentley
ENV home=/user/home

RUN yum install -y openssh openssh-server openssh-clients java-1.8.0-openjdk

RUN mkdir /home/user && \
mkdir /home/user/.ssh

COPY start.sh start.sh
COPY bungee home/user/bungee
RUN  chmod -R 777 /home/user

EXPOSE 25577
ENV PORT=25577

CMD ./start.sh