FROM docker:latest

RUN apk update \
  && apk add make bash py-pip \
  && apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev \
  && pip install azure-cli \
  && apk del --purge build
