FROM centos
RUN yum -y update
RUN  yum install -y vim
RUN touch /tmp/Dummy
CMD ["/bin/bash"]
ENV JAVA_HOME /opt/jdk1.8
USER nobody
WORKDIR /tmp
COPY startup.sh /tmp/startup.sh
ADD test.tar /tmp
CMD ["/tmp/startup.sh"]

#ENTRYPOINT ["/bin/sh", "startup.sh"]
#/bin/sh startup.sh -xarg2
