#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# Address Groups
set firewall group address-group jellyfin_clients address '10.66.3.21'
set firewall group address-group nas_client address '10.66.3.11'

## K8s infra
set firewall group address-group k8s_api address '10.5.0.2'

set firewall group address-group k8s_nodes address '10.66.1.41'
set firewall group address-group k8s_nodes address '10.66.1.42'
# set firewall group address-group k8s_nodes address '10.66.1.43'

set firewall group address-group k8s_ingress_allowed address '10.66.3.31'
set firewall group address-group k8s_ingress_allowed address '10.66.3.32'
set firewall group address-group k8s_ingress_allowed address '10.66.3.35'
set firewall group address-group k8s_ingress_allowed address '10.66.3.41'

## K8s services
set firewall group network-group k8s_services network '10.68.0.0/16'
set firewall group address-group k8s_ingress address '10.68.0.1'
# set firewall group address-group k8s_jellyfin address '10.68.0.21'
# set firewall group address-group k8s_mqtt address '10.68.0.10'
# set firewall group address-group k8s_hass address '10.68.0.5'
# set firewall group address-group k8s_vector_aggregator address '10.68.0.2'

set firewall group address-group nas address '10.66.1.21'

## VyOS
set firewall group address-group vyos_dnsdist address '10.67.0.3'

# Port groups
set firewall group port-group wireguard port '51820'
