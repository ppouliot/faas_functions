FROM ppouliot/faas_ipmitool:latest

COPY ipmi_one_time_pxe.sh /usr/sbin/ipmi_one_time_pxe.sh
RUN chmod +x /usr/sbin/ipmi_one_time_pxe.sh
ARG LANPLUS
ARG IPMI_IPADDR
ARG IPMI_USER
ARG IPMI_PASSWD
ENV LANPLUS $LANPLUS
ENV IPMI_IPADDR $IPMI_IPADDR
ENV IPMI_USER $IPMI_USER
ENV IPMI_PASSWD $IPMI_PASSWD
ENV fprocess="ipmi_one_time_pxe.sh"

CMD ["fwatchdog"]
