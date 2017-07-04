FROM ubuntu:16.04
ARG username
RUN apt-get update && \
    apt-get install -y \
        python \
        wget \
        python-dev \
        libffi-dev \
        libssl-dev \
        gcc \
        python \
        openssh-client \
        git \
        vim && \
     wget https://bootstrap.pypa.io/get-pip.py && \
     python get-pip.py && \
     pip install \
         ansible \
         apache-libcloud \
         pyopenssl \
         requests && \
     useradd -m $username
CMD /bin/bash
