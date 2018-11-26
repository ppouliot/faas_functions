#!/usr/bin/env bash

echo "Verifying Configuration of IPMI:$2"
ipmitool -Ilanplus -H$2 -U$3 -P$4 chassis status
echo "Configuring Node $2 for Pxeboot"
ipmitool -Ilanplus -H$2 -U$3 -P$4 chassis bootdev pxe
echo "rebooting $2"
ipmitool -Ilanplus -H$2 -U$3 -P$4 chassis power cycle
