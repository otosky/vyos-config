#!/bin/vbash

set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '98:fa:9b:65:f4:50'
set interfaces ethernet eth0 mtu '1508'
set interfaces ethernet eth0 vif 6 description 'Internet'
set interfaces ethernet eth0 vif 6 mtu '1508'

set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id '90:e2:ba:36:e2:08'
set interfaces ethernet eth1 address '10.66.0.1/24'
set interfaces ethernet eth1 vif 10 address '10.66.1.1/24'
set interfaces ethernet eth1 vif 10 description 'SERVERS'
set interfaces ethernet eth1 vif 20 address '10.66.2.1/24'
set interfaces ethernet eth1 vif 20 description 'TRUSTED'
set interfaces ethernet eth1 vif 30 address '192.168.50.1/24'
set interfaces ethernet eth1 vif 30 description 'GUEST'
set interfaces ethernet eth1 vif 40 address '10.66.3.1/24'
set interfaces ethernet eth1 vif 40 description 'IOT'

set interfaces ethernet eth2 hw-id '90:e2:ba:36:e2:09'
set interfaces ethernet eth3 hw-id '90:e2:ba:36:e2:0a'
set interfaces ethernet eth4 hw-id '90:e2:ba:36:e2:0b'
