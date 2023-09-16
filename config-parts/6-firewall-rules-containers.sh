#!/bin/vbash

# From CONTAINERS to GUEST
set firewall name containers-guest default-action 'drop'
set firewall name containers-guest description 'From CONTAINERS to GUEST'
set firewall name containers-guest enable-default-log

# From CONTAINERS to IOT
set firewall name containers-iot default-action 'drop'
set firewall name containers-iot description 'From CONTAINERS to IOT'
set firewall name containers-iot enable-default-log

# From CONTAINERS to LAN
set firewall name containers-lan default-action 'drop'
set firewall name containers-lan description 'From CONTAINERS to LAN'
set firewall name containers-lan enable-default-log
set firewall name containers-lan rule 1 action 'accept'
set firewall name containers-lan rule 1 description 'Rule: accept_unifi_discovery'
set firewall name containers-lan rule 1 destination port '10001,1900'
set firewall name containers-lan rule 1 protocol 'tcp_udp'

# From CONTAINERS to LOCAL
set firewall name containers-local default-action 'drop'
set firewall name containers-local description 'From CONTAINERS to LOCAL'
set firewall name containers-local enable-default-log
set firewall name containers-local rule 1 action 'accept'
set firewall name containers-local rule 1 description 'Rule: accept_ntp'
set firewall name containers-local rule 1 destination port 'ntp'
set firewall name containers-local rule 1 protocol 'udp'
set firewall name containers-local rule 2 action 'accept'
set firewall name containers-local rule 2 description 'Rule: accept_dhcp'
set firewall name containers-local rule 2 destination port '67,68'
set firewall name containers-local rule 2 protocol 'udp'
set firewall name containers-local rule 2 source port '67,68'

# From CONTAINERS to SERVERS
set firewall name containers-servers default-action 'accept'
set firewall name containers-servers description 'From CONTAINERS to SERVERS'
set firewall name containers-servers rule 1 action 'accept'
set firewall name containers-servers rule 1 description 'Rule: accept_icmp'
set firewall name containers-servers rule 1 protocol 'icmp'

# From CONTAINERS to TRUSTED
set firewall name containers-trusted default-action 'drop'
set firewall name containers-trusted description 'From CONTAINERS to TRUSTED'
set firewall name containers-trusted enable-default-log

# From CONTAINERS to WAN
set firewall name containers-wan default-action 'accept'
set firewall name containers-wan description 'From CONTAINERS to WAN'
