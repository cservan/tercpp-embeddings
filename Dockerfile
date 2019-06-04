# Copyright 2019 Qwant Research. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.

FROM ubuntu:18.04


ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update && \
    apt-get -y install \
        cmake \
        g++ \
        libboost-all-dev

COPY . /opt/tercpp

WORKDIR /opt/tercpp

# RUN bash build-deps.sh fastText \
#                         qnlp-toolkit \
#                         pistache \
#                         json \
#         && mkdir -p build/ && cd build \
#         && cmake .. && make -j4 && make install \
#         && ldconfig

RUN mkdir -p build/ && cd build \
    && cmake .. && make -j4 && make install \
    && ldconfig

# TODO: remove libyaml-cpp-dev

RUN groupadd -r tercpp && useradd --system -s /bin/bash -g tercpp tercpp

#USER qnlp 

#ENTRYPOINT ["/usr/local/bin/katanoisi"]
