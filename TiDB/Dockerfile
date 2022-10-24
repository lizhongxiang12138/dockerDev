FROM centos:centos7.9.2009
RUN curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh \
    && source /root/.bash_profile

CMD ["tail", "-f", "/dev/null"]