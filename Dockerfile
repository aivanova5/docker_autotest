FROM centos:7

ENV container docker
ENV REPO=https://github.com/aivanova5/docker_autotest
RUN sh "echo ${env.GIT_BRANCH}"

VOLUME [ "/sys/fs/cgroup" ]
WORKDIR /tmp
COPY utilities/docker/centos/*.sh /tmp/
RUN chmod +wx *.sh
RUN bash system.sh
RUN bash gridlabd.sh
EXPOSE 6266-6299/tcp
