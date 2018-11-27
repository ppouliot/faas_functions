FROM functions/alpine:latest

RUN apk add --no-cache bash curl wget git jq

COPY list_container_images_tags_from_organization.sh /usr/sbin/list_container_images_tags_from_organization.sh
RUN chmod +x /usr/sbin/list_container_images_tags_from_organization.sh
ARG DOCKER_ORGANIZATION
ARG CONTAINER_IMAGE
ENV DOCKER_ORGANIZATION=$DOCKER_ORGANIZATION
ENV CONTAINER_IMAGE=$CONTAINER_IMAGE
ENV fprocess="xargs list_container_images_tags_from_organization.sh"

CMD ["fwatchdog"]
