#!/bin/vbash

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.50.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.200'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 default-router '10.66.1.1'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 domain-name 'toskbot.xyz'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 range 0 start '10.66.1.200'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 range 0 stop '10.66.1.254'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 default-router '10.66.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 domain-name 'toskbot.xyz'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 range 0 start '10.66.2.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 range 0 stop '10.66.2.254'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 default-router '10.66.3.1'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 domain-name 'toskbot.xyz'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 range 0 start '10.66.3.200'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 range 0 stop '10.66.3.254'
