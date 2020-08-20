# toolbox

[![Build Status](https://travis-ci.org/dzahariev/toolbox.svg?branch=master)](https://travis-ci.org/dzahariev/toolbox)
[![Docker Repository on Quay](https://quay.io/repository/dzahariev/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/dzahariev/toolbox)
[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/repository/docker/dzahariev/toolbox)

Docker container with several tools that are needed in may daily work:

- curl: https://curl.haxx.se
- git: https://git-scm.com
- CF Command line tool: https://github.com/cloudfoundry/cli
- UAA Command line tool: https://github.com/cloudfoundry/cf-uaac
- Kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl/
- svcat: https://svc-cat.io/docs/install/#installing-the-service-catalog-cli
- helm: https://helm.sh/docs/using_helm/#installing-helm
- smctl: https://github.com/Peripli/service-manager-cli/releases
- Oh My Zsh: https://github.com/ohmyzsh/ohmyzsh

## Build toolbox:

```
cd github.com/dzahariev/toolbox
docker build -t toolbox .
```

## Start toolbox:

```
docker run -it toolbox
```

or

```
docker run -it quay.io/dzahariev/toolbox:latest 

```

or

```
docker run -it dzahariev/toolbox:latest 

```

## Remove toolbox containers:

```
docker rm -fv $(docker ps -a -f "ancestor=toolbox" --format "{{.ID}}")
```
