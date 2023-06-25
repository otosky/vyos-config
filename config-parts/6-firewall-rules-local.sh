#!/bin/vbash

# From LOCAL to GUEST
set firewall name local-guest default-action 'drop'
set firewall name local-guest description 'From LOCAL to GUEST'
set firewall name local-guest enable-default-log

# From LOCAL to IOT
set firewall name local-iot default-action 'drop'
set firewall name local-iot description 'From LOCAL to IOT'
set firewall name local-iot enable-default-log
set firewall name local-iot rule 1 action 'accept'
set firewall name local-iot rule 1 description 'Rule: accept_igmp'
set firewall name local-iot rule 1 protocol '2'
set firewall name local-iot rule 2 action 'accept'
set firewall name local-iot rule 2 description 'Rule: accept_mdns'
set firewall name local-iot rule 2 destination port 'mdns'
set firewall name local-iot rule 2 protocol 'udp'
set firewall name local-iot rule 2 source port 'mdns'

# From LOCAL to LAN
set firewall name local-lan default-action 'drop'
set firewall name local-lan description 'From LOCAL to LAN'
set firewall name local-lan enable-default-log

# From LOCAL to SERVERS
set firewall name local-servers default-action 'drop'
set firewall name local-servers description 'From LOCAL to SERVERS'
set firewall name local-servers enable-default-log
set firewall name local-servers rule 1 action 'accept'
set firewall name local-servers rule 1 description 'Rule: accept_bgp'
set firewall name local-servers rule 1 destination port 'bgp'
set firewall name local-servers rule 1 protocol 'tcp'
set firewall name local-servers rule 2 action 'accept'
set firewall name local-servers rule 2 description 'Rule: accept_k8s_api'
set firewall name local-servers rule 2 destination port '6443'
set firewall name local-servers rule 2 protocol 'tcp'
set firewall name local-servers rule 3 action 'accept'
set firewall name local-servers rule 3 description 'Rule: accept_dns'
set firewall name local-servers rule 3 destination port 'domain,domain-s'
set firewall name local-servers rule 3 protocol 'tcp_udp'
set firewall name local-servers rule 4 action 'accept'
set firewall name local-servers rule 4 description 'Rule: accept_vector_syslog'
set firewall name local-servers rule 4 destination group address-group 'k8s_vector_aggregator'
set firewall name local-servers rule 4 destination port '6001'
set firewall name local-servers rule 4 protocol 'tcp'

# From LOCAL to CONTAINERS
set firewall name local-containers default-action 'accept'
set firewall name local-containers description 'From LOCAL to CONTAINERS'
set firewall name local-containers rule 1 action 'accept'
set firewall name local-containers rule 1 description 'Rule: accept_dns'
set firewall name local-containers rule 1 destination port 'domain,domain-s'
set firewall name local-containers rule 1 protocol 'tcp_udp'

# From LOCAL to TRUSTED
set firewall name local-trusted default-action 'drop'
set firewall name local-trusted description 'From LOCAL to TRUSTED'
set firewall name local-trusted enable-default-log
set firewall name local-trusted rule 1 action 'accept'
set firewall name local-trusted rule 1 description 'Rule: accept_igmp'
set firewall name local-trusted rule 1 protocol '2'
set firewall name local-trusted rule 2 action 'accept'
set firewall name local-trusted rule 2 description 'Rule: accept_mdns'
set firewall name local-trusted rule 2 destination port 'mdns'
set firewall name local-trusted rule 2 protocol 'udp'
set firewall name local-trusted rule 2 source port 'mdns'

# From LOCAL to WAN
set firewall name local-wan default-action 'accept'
set firewall name local-wan description 'From LOCAL to WAN'
