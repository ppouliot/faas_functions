FROM functions/alpine:latest

RUN apk add --no-cache ipmitool bash

ENV fprocess="xargs ipmitool"

CMD ["fwatchdog"]
