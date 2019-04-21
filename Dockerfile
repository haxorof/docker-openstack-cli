FROM python:3.7.3-alpine

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    && pip install --upgrade pip \
    && pip install python-openstackclient \
    && pip install python-designateclient \
    && pip install python-heatclient \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache

ENTRYPOINT [ "openstack" ]