# Dockerfile_CentOS7-Python3
From CentOS 7.2 Base Image Dockerfile with Python 3

##### Supported tags and respective Dockerfile links
+ latest ( YaSanBee/Dockerfile_CentOS7-Python3 )

The Dockerfile is from the [yasanbee/centos7.2-systemd](https://hub.docker.com/r/yasanbee/centos7.2-systemd/).

For more information about this image and its history, please see [Docker Hub - yasanbee/centos7.2-systemd](https://hub.docker.com/r/yasanbee/centos7.2-systemd/).

And the [GitHub repo ( YaSanBee/Dockerfile_CentOS7-Python3 ) Here](https://github.com/YaSanBee/Dockerfile_CentOS7-Python3).

### Build and run

+ docker build --rm -t local/centos7-python3 .

+ docker run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro local/centos7-python3

+ docker exec -ti ***ContainerID*** /bin/bash
