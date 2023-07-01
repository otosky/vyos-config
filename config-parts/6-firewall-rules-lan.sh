#!/bin/vbash

# From LAN to GUEST
set firewall name lan-guest default-action 'drop'
set firewall name lan-guest description 'From LAN to GUEST'
set firewall name lan-guest enable-default-log

# From LAN to IOT
set firewall name lan-iot default-action 'accept'
set firewall name lan-iot description 'From LAN to IOT'
set firewall name lan-iot enable-default-log

# From LAN to LOCAL
set firewall name lan-local default-action 'drop'
set firewall name lan-local description 'From LAN to LOCAL'
set firewall name lan-local enable-default-log
set firewall name lan-local rule 1 action 'accept'
set firewall name lan-local rule 1 description 'Rule: accept_ssh'
set firewall name lan-local rule 1 destination port 'ssh'
set firewall name lan-local rule 1 protocol 'tcp'
set firewall name lan-local rule 2 action 'accept'
set firewall name lan-local rule 2 description 'Rule: accept_ntp'
set firewall name lan-local rule 2 destination port 'ntp'
set firewall name lan-local rule 2 protocol 'udp'
set firewall name lan-local rule 3 action 'accept'
set firewall name lan-local rule 3 description 'Rule: accept_dhcp'
set firewall name lan-local rule 3 destination port '67,68'
set firewall name lan-local rule 3 protocol 'udp'
set firewall name lan-local rule 3 source port '67,68'

# From LAN to SERVERS
set firewall name lan-servers default-action 'drop'
set firewall name lan-servers description 'From LAN to SERVERS'
set firewall name lan-servers enable-default-log
set firewall name lan-servers rule 1 action 'accept'
set firewall name lan-servers rule 1 description 'Rule: accept_icmp'
set firewall name lan-servers rule 1 protocol 'icmp'

# From LAN to CONTAINERS
set firewall name lan-containers default-action 'accept'
set firewall name lan-containers description 'From LAN to CONTAINERS'
set firewall name lan-containers rule 1 action 'accept'
set firewall name lan-containers rule 1 description 'Rule: accept_dns'
set firewall name lan-containers rule 1 destination port 'domain,domain-s'
set firewall name lan-containers rule 1 protocol 'tcp_udp'

# From LAN to TRUSTED
set firewall name lan-trusted default-action 'drop'
set firewall name lan-trusted description 'From LAN to TRUSTED'
set firewall name lan-trusted enable-default-log

# From LAN to WAN
set firewall name lan-wan default-action 'accept'
set firewall name lan-wan description 'From LAN to WAN'

