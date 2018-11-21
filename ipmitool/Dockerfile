FROM functions/alpine:latest

RUN apk add --no-cache ipmitool

ENV fprocess="xargs ipmitool"

CMD ["fwatchdog"]
