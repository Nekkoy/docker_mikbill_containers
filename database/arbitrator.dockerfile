FROM debian:11.8-slim

RUN apt-get -y update && apt-get -y install curl gnupg2 procps lsb-release libssl1.1
RUN curl -O https://repo.percona.com/apt/percona-release_latest.generic_all.deb
RUN apt install ./percona-release_latest.generic_all.deb
RUN apt-get -y update
RUN percona-release setup -y pxc80 release
RUN apt-get -y update

COPY ./files/percona-xtradb-cluster-garbd_8.0.32-24-2.bullseye_amd64.deb /tmp/percona-xtradb-cluster-garbd_8.0.32-24-2.bullseye_amd64.deb
RUN apt -y install /tmp/percona-xtradb-cluster-garbd_8.0.32-24-2.bullseye_amd64.deb

EXPOSE 4567