FROM python:3.10-alpine
LABEL maintainer="FourCo IT Services Benelux B.V. <info@fourco.nl>"

RUN apk update && \
    apk add nano git bash unzip && \
    pip3 install awscli && \
    wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip && \
    unzip terraform_1.6.6_linux_amd64.zip && \
    mv terraform /usr/local/bin && \
    rm terraform_1.6.6_linux_amd64.zip

ENTRYPOINT [ "/bin/bash" ]