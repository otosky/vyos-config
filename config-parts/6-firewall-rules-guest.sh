#!/bin/vbash

# From GUEST to LOCAL
set firewall name guest-local default-action 'drop'
set firewall name guest-local description 'From GUEST to LOCAL'
set firewall name guest-local enable-default-log
set firewall name guest-local rule 1 action 'accept'
set firewall name guest-local rule 1 description 'Rule: accept_dhcp'
set firewall name guest-local rule 1 destination port '67,68'
set firewall name guest-local rule 1 protocol 'udp'
set firewall name guest-local rule 1 source port '67,68'

# From GUEST to CONTAINERS
set firewall name guest-containers default-action 'drop'
set firewall name guest-containers description 'From GUEST to CONTAINERS'
set firewall name guest-containers enable-default-log
set firewall name guest-containers rule 1 action 'accept'
set firewall name guest-containers rule 1 description 'Rule: accept_dns'
set firewall name guest-containers rule 1 destination port 'domain,domain-s'
set firewall name guest-containers rule 1 protocol 'tcp_udp'

# From GUEST to WAN
set firewall name guest-wan default-action 'accept'
set firewall name guest-wan description 'From GUEST to WAN'

# From GUEST to IOT
set firewall name guest-iot default-action 'drop'
set firewall name guest-iot description 'From GUEST to IOT'
set firewall name guest-iot enable-default-log

# From GUEST to LAN
set firewall name guest-lan default-action 'drop'
set firewall name guest-lan description 'From GUEST to LAN'
set firewall name guest-lan enable-default-log

# From GUEST to SERVERS
set firewall name guest-servers default-action 'drop'
set firewall name guest-servers description 'From GUEST to SERVERS'
set firewall name guest-servers enable-default-log

# From GUEST to TRUSTED
set firewall name guest-trusted default-action 'drop'
set firewall name guest-trusted description 'From GUEST to TRUSTED'
set firewall name guest-trusted enable-default-log
