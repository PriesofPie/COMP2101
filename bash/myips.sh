#!/bin/bash
echo -n "ens33"
ifconfig ens33|grep inet|sed -e 's/ .*//'|grep [[:print:]]
echo -n "External IP:"
curl icanhazip.com
