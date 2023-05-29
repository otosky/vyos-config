#!/bin/vbash

# From SERVERS to GUEST
set firewall name servers-guest default-action 'drop'
set firewall name servers-guest description 'From SERVERS to GUEST'
set firewall name servers-guest enable-default-log

# From SERVERS to IOT
set firewall name servers-iot default-action 'drop'
set firewall name servers-iot description 'From SERVERS to IOT'
set firewall name servers-iot enable-default-log
set firewall name servers-iot rule 1 action 'accept'
set firewall name servers-iot rule 1 description 'Rule: accept_icmp'
set firewall name servers-iot rule 1 protocol 'icmp'
set firewall name servers-iot rule 2 action 'accept'
set firewall name servers-iot rule 2 description 'Rule: accept_p1reader_from_k8s_nodes'
set firewall name servers-iot rule 2 destination port '8088'
set firewall name servers-iot rule 2 protocol 'tcp'
set firewall name servers-iot rule 2 source group address-group 'k8s_nodes'
set firewall name servers-iot rule 3 action 'accept'
set firewall name servers-iot rule 3 description 'Rule: accept_adb_from_k8s_nodes'
set firewall name servers-iot rule 3 destination group address-group 'android_tv_players'
set firewall name servers-iot rule 3 destination port '5555'
set firewall name servers-iot rule 3 protocol 'tcp'
set firewall name servers-iot rule 3 source group address-group 'k8s_nodes'
set firewall name servers-iot rule 4 action 'accept'
set firewall name servers-iot rule 4 description 'Rule: accept_3d_printer_control_from_k8s_nodes'
set firewall name servers-iot rule 4 destination group address-group '3d_printer_controllers'
set firewall name servers-iot rule 4 destination port '7125'
set firewall name servers-iot rule 4 protocol 'tcp'
set firewall name servers-iot rule 4 source group address-group 'k8s_nodes'
set firewall name servers-iot rule 5 action 'accept'
set firewall name servers-iot rule 5 description 'Rule: accept_k8s_nodes'
set firewall name servers-iot rule 5 protocol 'tcp'
set firewall name servers-iot rule 5 source group address-group 'k8s_nodes'

# From SERVERS to LAN
set firewall name servers-lan default-action 'drop'
set firewall name servers-lan description 'From SERVERS to LAN'
set firewall name servers-lan enable-default-log
set firewall name servers-lan rule 1 action 'accept'
set firewall name servers-lan rule 1 description 'Rule: accept_icmp'
set firewall name servers-lan rule 1 protocol 'icmp'

# From SERVERS to LOCAL
set firewall name servers-local default-action 'drop'
set firewall name servers-local description 'From SERVERS to LOCAL'
set firewall name servers-local enable-default-log
set firewall name servers-local rule 1 action 'accept'
set firewall name servers-local rule 1 description 'Rule: accept_icmp'
set firewall name servers-local rule 1 protocol 'icmp'
set firewall name servers-local rule 2 action 'accept'
set firewall name servers-local rule 2 description 'Rule: accept_ntp'
set firewall name servers-local rule 2 destination port 'ntp'
set firewall name servers-local rule 2 protocol 'udp'
set firewall name servers-local rule 3 action 'accept'
set firewall name servers-local rule 3 description 'Rule: accept_dhcp'
set firewall name servers-local rule 3 destination port '67,68'
set firewall name servers-local rule 3 protocol 'udp'
set firewall name servers-local rule 3 source port '67,68'
set firewall name servers-local rule 4 action 'accept'
set firewall name servers-local rule 4 description 'Rule: accept_bgp'
set firewall name servers-local rule 4 destination port 'bgp'
set firewall name servers-local rule 4 protocol 'tcp'
set firewall name servers-local rule 5 action 'accept'
set firewall name servers-local rule 5 description 'Rule: accept_tftp'
set firewall name servers-local rule 5 destination port '69'
set firewall name servers-local rule 5 protocol 'udp'
set firewall name servers-local rule 6 action 'accept'
set firewall name servers-local rule 6 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall name servers-local rule 6 destination port '9100'
set firewall name servers-local rule 6 protocol 'tcp'
set firewall name servers-local rule 6 source group address-group 'k8s_nodes'
set firewall name servers-local rule 7 action 'accept'
set firewall name servers-local rule 7 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall name servers-local rule 7 destination port '9798'
set firewall name servers-local rule 7 protocol 'tcp'
set firewall name servers-local rule 7 source group address-group 'k8s_nodes'
# TODO: Needed because of MetalLB?
set firewall name servers-local rule 8 action 'accept'
set firewall name servers-local rule 8 description 'Rule: accept_bgp_2'
set firewall name servers-local rule 8 destination port '3784'
set firewall name servers-local rule 8 protocol 'udp'
set firewall name servers-local rule 8 source group address-group 'k8s_nodes'

# From SERVERS to CONTAINERS
set firewall name servers-containers default-action 'accept'
set firewall name servers-containers description 'From SERVERS to CONTAINERS'
set firewall name servers-containers enable-default-log
set firewall name servers-containers rule 1 action 'accept'
set firewall name servers-containers rule 1 description 'Rule: accept_dns'
set firewall name servers-containers rule 1 destination port 'domain,domain-s'
set firewall name servers-containers rule 1 protocol 'tcp_udp'
set firewall name servers-containers rule 2 action 'accept'
set firewall name servers-containers rule 2 description 'Rule: accept_k8s_api'
set firewall name servers-containers rule 2 destination port '6443'
set firewall name servers-containers rule 2 protocol 'tcp'

# From SERVERS to TRUSTED
set firewall name servers-trusted default-action 'drop'
set firewall name servers-trusted description 'From SERVERS to TRUSTED'
set firewall name servers-trusted enable-default-log
set firewall name servers-trusted rule 1 action 'accept'
set firewall name servers-trusted rule 1 description 'Rule: accept_icmp'
set firewall name servers-trusted rule 1 protocol 'icmp'

# From SERVERS to WAN
set firewall name servers-wan default-action 'accept'
set firewall name servers-wan description 'From SERVERS to WAN'


