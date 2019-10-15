# toolbox

[![Build Status](https://travis-ci.org/dzahariev/toolbox.svg?branch=master)](https://travis-ci.org/dzahariev/toolbox)
[![Docker Repository on Quay](https://quay.io/repository/dzahariev/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/dzahariev/toolbox)

Docker container with several tools that are needed in may daily work:


- curl: https://curl.haxx.se
- git: https://git-scm.com
- CF Command line tool: https://github.com/cloudfoundry/cli
- UAA Command line tool: https://github.com/cloudfoundry/cf-uaac
- Kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl/
- svcat: https://svc-cat.io/docs/install/#installing-the-service-catalog-cli
- helm: https://helm.sh/docs/using_helm/#installing-helm
- smctl: https://github.com/Peripli/service-manager-cli/releases

## Build toolbox:

```
cd github.com/dzahariev/toolbox
docker build -t toolbox .
```

## Start toolbox:

```
docker run -it --entrypoint /bin/bash toolbox
```

## Start and attach:

```
docker start $(docker ps -a -f "ancestor=toolbox" --format "{{.ID}}")
docker attach $(docker ps -a -f "ancestor=toolbox" --format "{{.ID}}")
```

## Remove toolbox containers:

```
docker rm -fv $(docker ps -a -f "ancestor=toolbox" --format "{{.ID}}")
```
