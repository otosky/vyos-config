#!/bin/vbash

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 default-router '192.168.50.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 range 0 start '192.168.50.200'
set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 range 0 stop '192.168.50.254'

set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 static-mapping oliver-work-laptop ip-address '192.168.50.11'
set service dhcp-server shared-network-name GUEST subnet 192.168.50.0/24 static-mapping oliver-work-laptop mac-address '5C:E9:1E:C2:D8:6B'

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 default-router '10.66.0.1'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 range 0 start '10.66.0.200'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 range 0 stop '10.66.0.254'

set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 static-mapping switch01 ip-address '10.66.0.11'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 static-mapping switch01 mac-address 'CC:4E:24:60:6B:E0'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 static-mapping switch02 ip-address '10.66.0.12'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 static-mapping switch02 mac-address 'F4:E2:C6:52:84:83'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 static-mapping ap01 ip-address '10.66.0.21'
set service dhcp-server shared-network-name LAN subnet 10.66.0.0/24 static-mapping ap01 mac-address '34:60:F9:2E:A5:F2'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 default-router '10.66.1.1'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 domain-name 'toskbot.xyz'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 range 0 start '10.66.1.200'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 range 0 stop '10.66.1.254'

set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping nas01 ip-address '10.66.1.21'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping nas01 mac-address '70:85:C2:66:EA:81'

set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-master01 ip-address '10.66.1.31'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-master01 mac-address '98:fa:9b:98:09:91'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-master02 ip-address '10.66.1.32'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-master02 mac-address '00:2b:67:5a:86:d5'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-master03 ip-address '10.66.1.33'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-master03 mac-address '54:05:db:50:6b:a2'

set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-server01 ip-address '10.66.1.41'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-server01 mac-address 'E4:1D:2D:DD:7D:10'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-server02 ip-address '10.66.1.42'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-server02 mac-address '24:8A:07:5D:9F:40'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-server03 ip-address '10.66.1.43'
set service dhcp-server shared-network-name SERVERS subnet 10.66.1.0/24 static-mapping kube-server03 mac-address 'E4:1D:2D:2B:5A:20'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 default-router '10.66.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 domain-name 'toskbot.xyz'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 name-server '10.67.0.3'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 range 0 start '10.66.2.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 range 0 stop '10.66.2.254'

set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping oliver-pixel ip-address '10.66.2.21'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping oliver-pixel mac-address 'D6:21:9A:B3:6B:2E'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping oliver-desktop ip-address '10.66.2.22'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping oliver-desktop mac-address 'A8:A1:59:BD:E7:2F'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping oliver-laptop ip-address '10.66.2.23'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping oliver-laptop mac-address 'C4:BD:E5:1B:A6:48'

# set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping emma-laptop ip-address '10.66.2.31'
# set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping emma-laptop mac-address
# set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping emma-iphone ip-address '10.66.2.32'
# set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping emma-iphone mac-address
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping livingroom-tablet ip-address '10.66.2.41'
set service dhcp-server shared-network-name TRUSTED subnet 10.66.2.0/24 static-mapping livingroom-tablet mac-address '76:1E:53:A0:58:2F'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 default-router '10.66.3.1'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 domain-name 'toskbot.xyz'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 name-server '1.1.1.1'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 range 0 start '10.66.3.200'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 range 0 stop '10.66.3.254'

set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping tubeszigbee ip-address '10.66.3.5'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping tubeszigbee mac-address 'E8:9F:6D:D1:10:07'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping volumio01 ip-address '10.66.3.11'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping volumio01 mac-address 'B8:27:EB:78:B9:8A'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping roku01 ip-address '10.66.3.21'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping roku01 mac-address 'BC:D7:D4:32:F9:2A'
# set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping nintendo-switch ip-address '10.66.3.22'
# set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping nintendo-switch mac-address

set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping nest-mini01 ip-address '10.66.3.31'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping nest-mini01 mac-address '20:1F:3B:94:8A:64'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping nest-mini02 ip-address '10.66.3.32'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping nest-mini02 mac-address '20:1F:3B:9C:B9:11'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping broadlink01 ip-address '10.66.3.35'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping broadlink01 mac-address 'EC:0B:AE:9E:9C:6E'

set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping esp-presence01 ip-address '10.66.3.41'
set service dhcp-server shared-network-name IOT subnet 10.66.3.0/24 static-mapping esp-presence01 mac-address 'C0:49:EF:D4:DB:D8'
