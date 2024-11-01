# dnsmasq Docker Image

This repository contains a Dockerfile for building a dnsmasq image with customizable domain, DHCP range, and upstream DNS server.

## Usage

### Build the image

```bash
docker build -t xmonader/dnsmasq .
```

### Run the container

```
docker run -d --name dns_server --network dhcp_network --restart unless-stopped \
-e DNSMASQ_DOMAIN=local \
-e DNSMASQ_DHCP_RANGE=172.18.0.10,172.18.0.50 \
-e DNSMASQ_DNS_SERVER=8.8.8.8 \
xmonader/dnsmasq
```


#### Environment variables

- `DNSMASQ_DOMAIN`: Domain name (default: local)
- `DNSMASQ_DHCP_RANGE`: DHCP IP range (default: 172.18.0.10,172.18.0.50)
- `DNSMASQ_DNS_SERVER`: Upstream DNS server (default: 8.8.8.8)
