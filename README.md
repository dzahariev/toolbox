# toolbox

## Build toolbox:

```
cd /src/github.com/dzahariev/toolbox
docker build -t toolbox .
```

## Start toolbox:

```
docker run -it --entrypoint /bin/bash toolbox
```

## Remove toolbox containers:

```
docker rm -fv $(docker ps -a -f "ancestor=toolbox" --format "{{.ID}}")
```

