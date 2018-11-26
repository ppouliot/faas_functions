FROM functions/alpine:latest

RUN apk add --no-cache bash curl wget git jq

COPY list_containers_from_organization.sh /usr/sbin/list_containers_from_organization.sh
RUN chmod +x /usr/sbin/list_containers_from_organization.sh
ARG DOCKER_ORGANIZATION
ENV DOCKER_ORGANIZATION=$DOCKER_ORGANIZATION
ENV fprocess="xargs list_containers_from_organization.sh"

CMD ["fwatchdog"]
