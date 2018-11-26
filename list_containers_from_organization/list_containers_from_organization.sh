#!/usr/bin/env bash
curl -k https://registry.hub.docker.com/v1/search?q=$DOCKER_HUB_ORG |
sed -e 's/[{}]/''/g' |
awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' |
grep name |
awk -F ":" '{ print $2 }'
