#!/bin/sh

# Set default values
DOMAIN=${DNSMASQ_DOMAIN:-local}
DHCP_RANGE=${DNSMASQ_DHCP_RANGE:-172.18.0.10,172.18.0.50}
DNS_SERVER=${DNSMASQ_DNS_SERVER:-8.8.8.8}

# Configure dnsmasq
echo "domain=$DOMAIN" > /etc/dnsmasq.conf
echo "dhcp-range=$DHCP_RANGE" >> /etc/dnsmasq.conf
echo "server=$DNS_SERVER" >> /etc/dnsmasq.conf

# Start dnsmasq
dnsmasq -d
