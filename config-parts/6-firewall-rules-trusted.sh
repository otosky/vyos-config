#!/bin/vbash

# From TRUSTED to GUEST
set firewall name trusted-guest default-action 'drop'
set firewall name trusted-guest description 'From TRUSTED to GUEST'
set firewall name trusted-guest enable-default-log

# From TRUSTED to IOT
set firewall name trusted-iot default-action 'accept'
set firewall name trusted-iot description 'From TRUSTED to IOT'
set firewall name trusted-iot rule 1 action 'accept'
set firewall name trusted-iot rule 1 description 'Rule: accept_icmp'
set firewall name trusted-iot rule 1 protocol 'icmp'
set firewall name trusted-iot rule 2 action 'accept'
set firewall name trusted-iot rule 2 description 'Rule: accept_app_control_from_sonos_controllers_tcp'
set firewall name trusted-iot rule 2 destination port '80,443,445,1400,3400,3401,3500,4070,4444'
set firewall name trusted-iot rule 2 protocol 'tcp'
set firewall name trusted-iot rule 2 source group address-group 'sonos_controllers'
set firewall name trusted-iot rule 3 action 'accept'
set firewall name trusted-iot rule 3 description 'Rule: accept_app_control_from_sonos_controllers_udp'
set firewall name trusted-iot rule 3 destination port '136-139,1900-1901,2869,10243,10280-10284,5353,6969'
set firewall name trusted-iot rule 3 protocol 'udp'
set firewall name trusted-iot rule 3 source group address-group 'sonos_controllers'

# From TRUSTED to LAN
set firewall name trusted-lan default-action 'accept'
set firewall name trusted-lan description 'From TRUSTED to LAN'

# From TRUSTED to LOCAL
set firewall name trusted-local default-action 'drop'
set firewall name trusted-local description 'From TRUSTED to LOCAL'
set firewall name trusted-local enable-default-log
set firewall name trusted-local rule 1 action 'accept'
set firewall name trusted-local rule 1 description 'Rule: accept_icmp'
set firewall name trusted-local rule 1 protocol 'icmp'
set firewall name trusted-local rule 2 action 'accept'
set firewall name trusted-local rule 2 description 'Rule: accept_ssh'
set firewall name trusted-local rule 2 destination port 'ssh'
set firewall name trusted-local rule 2 protocol 'tcp'
set firewall name trusted-local rule 3 action 'accept'
set firewall name trusted-local rule 3 description 'Rule: accept_ntp'
set firewall name trusted-local rule 3 destination port 'ntp'
set firewall name trusted-local rule 3 protocol 'udp'
set firewall name trusted-local rule 4 action 'accept'
set firewall name trusted-local rule 4 description 'Rule: accept_dhcp'
set firewall name trusted-local rule 4 destination port '67,68'
set firewall name trusted-local rule 4 protocol 'udp'
set firewall name trusted-local rule 4 source port '67,68'
set firewall name trusted-local rule 5 action 'accept'
set firewall name trusted-local rule 5 description 'Rule: accept_igmp'
set firewall name trusted-local rule 5 protocol '2'
set firewall name trusted-local rule 6 action 'accept'
set firewall name trusted-local rule 6 description 'Rule: accept_mdns'
set firewall name trusted-local rule 6 destination port 'mdns'
set firewall name trusted-local rule 6 protocol 'udp'
set firewall name trusted-local rule 6 source port 'mdns'
set firewall name trusted-local rule 7 action 'accept'
set firewall name trusted-local rule 7 description 'Rule: accept_wireguard'
set firewall name trusted-local rule 7 destination port '51820'
set firewall name trusted-local rule 7 protocol 'udp'
set firewall name trusted-local rule 8 action 'accept'
set firewall name trusted-local rule 8 description 'Rule: accept_vyos_api'
set firewall name trusted-local rule 8 destination port '8443'
set firewall name trusted-local rule 8 protocol 'tcp'
set firewall name trusted-local rule 9 action 'accept'
set firewall name trusted-local rule 9 description 'Rule: accept_discovery_from_sonos_players'
set firewall name trusted-local rule 9 destination port '1900,1901,1902'
set firewall name trusted-local rule 9 protocol 'udp'
set firewall name trusted-local rule 9 source group address-group 'sonos_players'
set firewall name trusted-local rule 10 action 'accept'
set firewall name trusted-local rule 10 description 'Rule: accept_discovery_from_sonos_controllers'
set firewall name trusted-local rule 10 destination port '1900,1901,1902,57621'
set firewall name trusted-local rule 10 protocol 'udp'
set firewall name trusted-local rule 10 source group address-group 'sonos_controllers'

# From TRUSTED to SERVERS
set firewall name trusted-servers default-action 'accept'
set firewall name trusted-servers description 'From TRUSTED to SERVERS'
set firewall name trusted-servers rule 1 action 'accept'
set firewall name trusted-servers rule 1 description 'Rule: accept_icmp'
set firewall name trusted-servers rule 1 protocol 'icmp'

# From TRUSTED to CONTAINERS
set firewall name trusted-containers default-action 'accept'
set firewall name trusted-containers description 'From TRUSTED to CONTAINERS'
set firewall name trusted-containers rule 1 action 'accept'
set firewall name trusted-containers rule 1 description 'Rule: accept_dns'
set firewall name trusted-containers rule 1 destination port 'domain,domain-s'
set firewall name trusted-containers rule 1 protocol 'tcp_udp'

# From TRUSTED to WAN
set firewall name trusted-wan default-action 'accept'
set firewall name trusted-wan description 'From TRUSTED to WAN'

