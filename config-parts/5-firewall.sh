#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# Address Groups
set firewall group address-group jellyfin_clients address '10.1.2.21'

## K8s infra
set firewall group address-group k8s_api address '10.5.0.2'

set firewall group address-group k8s_nodes address '10.1.1.31'
set firewall group address-group k8s_nodes address '10.1.1.32'
set firewall group address-group k8s_nodes address '10.1.1.33'

set firewall group address-group k8s_ingress_allowed address '10.1.3.35'
set firewall group address-group k8s_ingress_allowed address '10.1.3.36'

## K8s services
set firewall group network-group k8s_services network '10.68.0.0/16'
set firewall group address-group k8s_ingress address '10.68.0.1'
# set firewall group address-group k8s_jellyfin address '10.68.0.21'
# set firewall group address-group k8s_mqtt address '10.68.0.10'
# set firewall group address-group k8s_hass address '10.68.0.5'
# set firewall group address-group k8s_vector_aggregator address '10.68.0.2'

set firewall group address-group hass_clients address '10.1.4.12'

set firewall group address-group nas address '10.1.1.11'

set firewall group address-group vector_journald_allowed address '10.1.3.56'
set firewall group address-group vector_journald_allowed address '10.1.3.60'

## VyOS
set firewall group address-group vyos_dnsdist address '10.67.0.3'

# Port groups
set firewall group port-group wireguard port '51820'
