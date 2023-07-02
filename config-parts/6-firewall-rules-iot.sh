#!/bin/vbash

# From IOT to GUEST
set firewall name iot-guest default-action 'drop'
set firewall name iot-guest description 'From IOT to GUEST'
set firewall name iot-guest enable-default-log

# From IOT to LAN
set firewall name iot-lan default-action 'accept'
set firewall name iot-lan description 'From IOT to LAN'
set firewall name iot-lan enable-default-log
set firewall name iot-lan rule 1 action 'accept'
set firewall name iot-lan rule 1 description 'Rule: accept_dns'
set firewall name iot-lan rule 1 destination port 'domain,domain-s'
set firewall name iot-lan rule 1 protocol 'tcp_udp'

# From IOT to LOCAL
set firewall name iot-local default-action 'drop'
set firewall name iot-local description 'From IOT to LOCAL'
set firewall name iot-local enable-default-log
set firewall name iot-local rule 1 action 'accept'
set firewall name iot-local rule 1 description 'Rule: accept_icmp'
set firewall name iot-local rule 1 protocol 'icmp'
set firewall name iot-local rule 2 action 'accept'
set firewall name iot-local rule 2 description 'Rule: accept_ssh'
set firewall name iot-local rule 2 destination port 'ssh'
set firewall name iot-local rule 2 protocol 'tcp'
set firewall name iot-local rule 3 action 'accept'
set firewall name iot-local rule 3 description 'Rule: accept_ntp'
set firewall name iot-local rule 3 destination port 'ntp'
set firewall name iot-local rule 3 protocol 'udp'
set firewall name iot-local rule 4 action 'accept'
set firewall name iot-local rule 4 description 'Rule: accept_dhcp'
set firewall name iot-local rule 4 destination port '67,68'
set firewall name iot-local rule 4 protocol 'udp'
set firewall name iot-local rule 4 source port '67,68'
set firewall name iot-local rule 5 action 'accept'
set firewall name iot-local rule 5 description 'Rule: accept_igmp'
set firewall name iot-local rule 5 protocol '2'
set firewall name iot-local rule 6 action 'accept'
set firewall name iot-local rule 6 description 'Rule: accept_mdns'
set firewall name iot-local rule 6 destination port 'mdns'
set firewall name iot-local rule 6 protocol 'udp'
set firewall name iot-local rule 6 source port 'mdns'

# From IOT to SERVERS
set firewall name iot-servers default-action 'drop'
set firewall name iot-servers description 'From IOT to SERVERS'
set firewall name iot-servers enable-default-log
set firewall name iot-servers rule 1 action 'accept'
set firewall name iot-servers rule 1 description 'Rule: accept_k8s_ingress_from_allowed_devices'
set firewall name iot-servers rule 1 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 1 destination port 'http,https'
set firewall name iot-servers rule 1 protocol 'tcp'
set firewall name iot-servers rule 1 source group address-group 'k8s_ingress_allowed'
# set firewall name iot-servers rule 3 action 'accept'
# set firewall name iot-servers rule 3 description 'Rule: accept_jellyfin_from_jellyfin_clients'
# set firewall name iot-servers rule 3 destination group address-group 'k8s_jellyfin'
# set firewall name iot-servers rule 3 destination port '8096'
# set firewall name iot-servers rule 3 protocol 'tcp'
# set firewall name iot-servers rule 3 source group address-group 'jellyfin_clients'
# set firewall name iot-servers rule 4 action 'accept'
# set firewall name iot-servers rule 4 description 'Rule: accept_mqtt_from_mqtt_clients'
# set firewall name iot-servers rule 4 destination group address-group 'k8s_mqtt'
# set firewall name iot-servers rule 4 destination port '1883'
# set firewall name iot-servers rule 4 protocol 'tcp'
# set firewall name iot-servers rule 4 source group address-group 'mqtt_clients'
# set firewall name iot-servers rule 5 action 'accept'
# set firewall name iot-servers rule 5 description 'Rule: accept_mqtt_from_esp'
# set firewall name iot-servers rule 5 destination group address-group 'k8s_mqtt'
# set firewall name iot-servers rule 5 destination port '1883'
# set firewall name iot-servers rule 5 protocol 'tcp'
# set firewall name iot-servers rule 5 source group address-group 'esp'
# set firewall name iot-servers rule 10 action 'accept'
# set firewall name iot-servers rule 10 description 'Rule: accept_vector_journald_from_allowed_devices'
# set firewall name iot-servers rule 10 destination group address-group 'k8s_vector_aggregator'
# set firewall name iot-servers rule 10 destination port '6002'
# set firewall name iot-servers rule 10 protocol 'tcp'
# set firewall name iot-servers rule 10 source group address-group 'vector_journald_allowed'

# From IOT to CONTAINERS
set firewall name iot-containers default-action 'accept'
set firewall name iot-containers description 'From IOT to CONTAINERS'
set firewall name iot-containers rule 1 action 'accept'
set firewall name iot-containers rule 1 description 'Rule: accept_dns'
set firewall name iot-containers rule 1 destination port 'domain,domain-s'
set firewall name iot-containers rule 1 protocol 'tcp_udp'

# From IOT to TRUSTED
set firewall name iot-trusted default-action 'drop'
set firewall name iot-trusted description 'From IOT to TRUSTED'
set firewall name iot-trusted enable-default-log

# From IOT to WAN
set firewall name iot-wan default-action 'accept'
set firewall name iot-wan description 'From IOT to WAN'
