FROM ubuntu:20.04

LABEL maintainer="fred.lackey@gmail.com"
LABEL author="fred.lackey@gmail.com"
LABEL version="20241217"
LABEL description="Ubuntu Development Environment"

# ------------------------------------------------------------------------------------------------
# Install dependencies
# ------------------------------------------------------------------------------------------------

RUN apt update
RUN apt upgrade -y
RUN apt install -y curl software-properties-common wget gnupg unzip vim 

RUN cp /usr/share/zoneinfo/America/New_York /etc/localtime
RUN echo "America/New_York" > /etc/timezone
RUN apt install -y git-all

# ------------------------------------------------------------------------------------------------
# Install Terraform
# ------------------------------------------------------------------------------------------------

RUN git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
RUN ln -s ~/.tfenv/bin/* /usr/local/bin
RUN tfenv install 1.10.2
RUN tfenv use 1.10.2

# ------------------------------------------------------------------------------------------------
# Install Terraform AWS Provider
# ------------------------------------------------------------------------------------------------

RUN mkdir -p /tmp/terraform-provider-aws
WORKDIR /tmp/terraform-provider-aws
RUN wget https://releases.hashicorp.com/terraform-provider-aws/5.81.0/terraform-provider-aws_5.81.0_linux_amd64.zip
RUN unzip terraform-provider-aws_5.81.0_linux_amd64.zip
RUN mkdir -p /root/.terraform.d/plugins/linux_amd64
RUN mv terraform-provider-aws_v5.81.0_x5 /root/.terraform.d/plugins/linux_amd64/terraform-provider-aws_v5.81.0_x5
WORKDIR /tmp
RUN rm -rf /tmp/terraform-provider-aws

# ------------------------------------------------------------------------------------------------
# Install AWS CLI
# ------------------------------------------------------------------------------------------------

RUN apt install -y awscli

# ------------------------------------------------------------------------------------------------
# Install Golang
# ------------------------------------------------------------------------------------------------

RUN mkdir -p /tmp/golang
WORKDIR /tmp/golang
RUN curl -L  https://storage.googleapis.com/golang/go1.23.3.linux-amd64.tar.gz -o /tmp/golang/go.tar.gz
RUN tar xvfz /tmp/golang/go.tar.gz -C /tmp/golang
RUN mv /tmp/golang/go /usr/local/
ENV PATH="/usr/local/go/bin:${PATH}"
RUN go install golang.org/x/tools/cmd/goimports@latest
RUN go install github.com/nsf/gocode@latest
RUN go version

WORKDIR /root
RUN rm -rf /tmp/golang
RUN rm -rf /root/go

# ------------------------------------------------------------------------------------------------
# Install Node
# ------------------------------------------------------------------------------------------------

ENV NODE_VERSION=22.11.0
RUN apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
