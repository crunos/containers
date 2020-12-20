#!/bin/sh

#./../../lkit.sh build -format tar containers.yml
docker run --rm -ti -v ~/.docker:/root/.docker -v /var/run/docker.sock:/var/run/docker.sock --device /dev/kvm -v $(pwd):$(pwd) -w $(pwd) crunos/os-builder:latest build -format tar containers.yml

#./../../lkit.sh pkg build -disable-content-trust -org crunos --force -hash latest .
docker run --rm -ti -v ~/.docker:/root/.docker -v /var/run/docker.sock:/var/run/docker.sock --device /dev/kvm -v $(pwd):$(pwd) -w $(pwd) crunos/os-builder:latest pkg build -hash latest -force .

rm -f containers.tar
