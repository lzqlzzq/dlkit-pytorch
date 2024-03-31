FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-runtime

ENV SHELL=/bin/bash

WORKDIR /workspace

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN apt-get update
RUN apt-get install -y -–no-install-recommends vim git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install jupyterlab tensorboard

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8888
EXPOSE 6006

ENTRYPOINT ["/entrypoint.sh"]
