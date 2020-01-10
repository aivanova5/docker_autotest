FROM centos:7

ENV container docker
ENV REPO=https://github.com/aivanova5/docker_autotest
ARG git_branch
RUN echo "Building $git_branch "

VOLUME [ "/sys/fs/cgroup" ]
WORKDIR /tmp
EXPOSE 6266-6299/tcp
