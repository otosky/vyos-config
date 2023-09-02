#!/bin/vbash

# From WAN to GUEST
set firewall name wan-guest default-action 'drop'
set firewall name wan-guest description 'From WAN to GUEST'
set firewall name wan-guest enable-default-log

# From WAN to IOT
set firewall name wan-iot default-action 'drop'
set firewall name wan-iot description 'From WAN to IOT'
set firewall name wan-iot enable-default-log

# From WAN to LAN
set firewall name wan-lan default-action 'drop'
set firewall name wan-lan description 'From WAN to LAN'
set firewall name wan-lan enable-default-log

# From WAN to LOCAL
set firewall name wan-local default-action 'drop'
set firewall name wan-local description 'From WAN to LOCAL'
set firewall name wan-local enable-default-log
set firewall name wan-local rule 1 action 'accept'
set firewall name wan-local rule 1 description 'Rule: accept_wireguard'
set firewall name wan-local rule 1 destination port '51820'
set firewall name wan-local rule 1 protocol 'udp'
set firewall name wan-local rule 2 action 'accept'
set firewall name wan-local rule 2 description 'Rule: accept_icmp'
set firewall name wan-local rule 2 protocol 'icmp'
set firewall name wan-local rule 2 source group address-group 'uptime_robot_whitelist'

# From WAN to SERVERS
set firewall name wan-servers default-action 'drop'
set firewall name wan-servers description 'From WAN to SERVERS'
set firewall name wan-servers enable-default-log

# From WAN to CONTAINERS
set firewall name wan-containers default-action 'drop'
set firewall name wan-containers description 'From WAN to CONTAINERS'
set firewall name wan-containers enable-default-log

# From WAN to TRUSTED
set firewall name wan-trusted default-action 'drop'
set firewall name wan-trusted description 'From WAN to TRUSTED'
set firewall name wan-trusted enable-default-log
