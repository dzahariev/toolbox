FROM alpine:edge AS package_step

RUN apk update && \
  apk add zsh && \
  apk add curl && \
  apk add git && \
  apk add vim && \
  apk add postgresql-client && \
  apk add jq && \
  apk add build-base  && \
  apk add ruby-dev 

# install uaac
RUN gem install cf-uaac

# install CF cli
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v7&source=github" | tar -zx && \
  mv ./cf7 /usr/bin/ && \
  mv ./cf /usr/bin/

# install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
  chmod +x ./kubectl && \
  mv ./kubectl /usr/bin/

# install svcat
RUN curl -sLO https://download.svcat.sh/cli/latest/linux/amd64/svcat && \
  chmod +x ./svcat && \
  mv ./svcat /usr/bin/

ARG HELM_VERSION=v3.4.1
# install helm
RUN curl -sL -o helm-linux-amd64.tar.gz https://get.helm.sh/helm-$HELM_VERSION-linux-amd64.tar.gz && \
  tar -zxvf helm-linux-amd64.tar.gz && \
  chmod +x ./linux-amd64/helm && \
  mv linux-amd64/helm /usr/bin && \
  rm -fR linux-amd64

ARG SMCTL_VERSION=v1.11.2
# install smctl
RUN curl -sL -o smctl https://github.com/Peripli/service-manager-cli/releases/download/$SMCTL_VERSION/smctl_linux_x86-64 && \
  chmod +x smctl && \
  mv ./smctl /usr/bin/

# install Oh My Zsh
RUN curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && \
  sh install.sh && \
  rm install.sh

CMD ["zsh"]
