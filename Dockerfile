# Copyright 2016 YaSanBee
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# YaSanBee/Dockerfile_CentOS7-Python3
#
# VERSION 0.0.1

FROM yasanbee/centos7.2-systemd:latest

MAINTAINER YaSanBee

WORKDIR ~

RUN mkdir Download; cd Download/; \
yum -y install wget; yum clean all; \
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz; \
tar -xf Python-3.5.1.tgz;

RUN cd Python-3.5.1; \
mkdir /usr/python35; \
./configure --prefix=/usr/python35; \
make; make install; \





################################################################
RUN yum -y swap -- remove fakesystemd -- install systemd systemd-libs
RUN yum -y update; yum clean all; \
(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME [ "/sys/fs/cgroup" ]

ENTRYPOINT ["/usr/sbin/init"]
