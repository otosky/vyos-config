#!/bin/vbash

# Container networks
set container network containers prefix '10.67.0.0/24'

# bind
set container name bind network containers address '10.67.0.2'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind cap-add 'net-bind-service'
set container name bind memory '0'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'
set container name bind restart 'on-failure'

# dnsdist
set container name dnsdist network containers address '10.67.0.3'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.0'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'America/New_York'
set container name dnsdist memory '0'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# haproxy-k8s-api
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.7.8'
set container name haproxy-k8s-api network containers address '10.67.0.4'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config source '/config/containers/haproxy/config/haproxy.cfg'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config mode 'ro'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value "${SECRET_CLOUDFLARE_DOMAINS}"
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value 'America/New_York'
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.9.4'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# udp-broadcast-relay-mdns
set container name udp-broadcast-relay-mdns allow-host-networks
set container name udp-broadcast-relay-mdns cap-add 'net-raw'
set container name udp-broadcast-relay-mdns environment CFG_DEV value 'eth1.20;eth1.40'
set container name udp-broadcast-relay-mdns environment CFG_ID value '2'
set container name udp-broadcast-relay-mdns environment CFG_MULTICAST value '224.0.0.251'
set container name udp-broadcast-relay-mdns environment CFG_PORT value '5353'
set container name udp-broadcast-relay-mdns environment SEPARATOR value ';'
set container name udp-broadcast-relay-mdns image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-mdns memory '0'
set container name udp-broadcast-relay-mdns restart 'on-failure'
set container name udp-broadcast-relay-mdns shared-memory '0'

# udp-broadcast-relay-volumio
set container name udp-broadcast-relay-volumio allow-host-networks
set container name udp-broadcast-relay-volumio cap-add 'net-raw'
set container name udp-broadcast-relay-volumio environment CFG_DEV value 'eth1.20;eth1.40'
set container name udp-broadcast-relay-volumio environment CFG_ID value '1'
set container name udp-broadcast-relay-volumio environment CFG_MULTICAST value '239.255.255.250'
set container name udp-broadcast-relay-volumio environment CFG_PORT value '1900'
set container name udp-broadcast-relay-volumio environment SEPARATOR value ';'
set container name udp-broadcast-relay-volumio image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-volumio memory '0'
set container name udp-broadcast-relay-volumio restart 'on-failure'
set container name udp-broadcast-relay-volumio shared-memory '0'

# unifi
set container name unifi network containers address '10.67.0.5'
set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment TZ value 'America/New_York'
set container name unifi environment UNIFI_UID value '999'
set container name unifi environment UNIFI_GID value '999'
set container name unifi environment UNIFI_STDOUT value 'true'
set container name unifi image 'ghcr.io/jacobalberty/unifi-docker:v7.5.174'
set container name unifi memory '0'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume data source '/config/containers/unifi'
set container name unifi volume data destination '/unifi'
set container name unifi volume data mode 'rw'
