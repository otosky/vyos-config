#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# Address Groups
set firewall group address-group jellyfin_clients address '10.66.3.21-10.66.3.29'
set firewall group address-group nas_clients address '10.66.3.11'
set firewall group address-group mqtt_clients address '10.66.3.60'
set firewall group address-group moonlight_clients address '10.66.3.25'
set firewall group address-group moonlight_clients address '10.66.3.100'

# Uptime Robot
set firewall group address-group uptime_robot_whitelist address '69.162.124.224-69.162.124.238'
set firewall group address-group uptime_robot_whitelist address '63.143.42.240-63.143.42.254'
set firewall group address-group uptime_robot_whitelist address '216.245.221.80-216.245.221.94'
set firewall group address-group uptime_robot_whitelist address '208.115.199.16-208.115.199.30'
set firewall group address-group uptime_robot_whitelist address '216.144.248.16-216.144.248.30'
set firewall group address-group uptime_robot_whitelist address '104.131.107.63'
set firewall group address-group uptime_robot_whitelist address '165.227.83.148'
set firewall group address-group uptime_robot_whitelist address '216.144.250.150'

## K8s infra
set firewall group address-group k8s_api address '10.5.0.2'

set firewall group address-group k8s_nodes address '10.66.1.41'
set firewall group address-group k8s_nodes address '10.66.1.42'
set firewall group address-group k8s_nodes address '10.66.1.43'
set firewall group address-group k8s_nodes address '10.66.1.44'

set firewall group address-group k8s_ingress_allowed address '10.66.3.11'
set firewall group address-group k8s_ingress_allowed address '10.66.3.31'
set firewall group address-group k8s_ingress_allowed address '10.66.3.32'
set firewall group address-group k8s_ingress_allowed address '10.66.3.35'
set firewall group address-group k8s_ingress_allowed address '10.66.3.36'
set firewall group address-group k8s_ingress_allowed address '10.66.3.41'
set firewall group address-group k8s_ingress_allowed address '10.66.3.45'

## K8s services
# set firewall group network-group k8s_services network '10.66.0.0/16'
set firewall group address-group k8s_ingress address '10.66.1.53'
set firewall group address-group k8s_ingress address '10.66.1.54'
set firewall group address-group k8s_hass address '10.66.1.102'
set firewall group address-group k8s_jellyfin address '10.66.1.103'
set firewall group address-group k8s_vector_aggregator address '10.66.1.104'
set firewall group address-group k8s_syncthing address '10.66.1.106'
set firewall group address-group k8s_mqtt address '10.66.1.108'

set firewall group address-group nas address '10.66.1.21'

## IOT
set firewall group address-group volumio address '10.66.3.11'

set firewall group address-group cast_speakers address '10.66.3.31'
set firewall group address-group cast_speakers address '10.66.3.32'

set firewall group address-group ssdp_sources address '10.66.3.11'
set firewall group address-group ssdp_sources address '10.66.3.21'

set firewall group address-group voice_assistants address '10.66.3.45'

set firewall group address-group ha_kiosk address '10.66.3.80'

## VyOS
set firewall group address-group vyos_dnsdist address '10.67.0.3'

# Port groups
set firewall group port-group wireguard port '51820'
