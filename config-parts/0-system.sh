#!/bin/vbash

set system domain-name 'toskbot.xyz'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys personal-desktop key 'AAAAC3NzaC1lZDI1NTE5AAAAIG8p0oPZzatlGw7Fxg5/ur4GJhARIl/isUl2BzmxKPzb'
set system login user vyos authentication public-keys personal-desktop type 'ssh-ed25519'
set system login user vyos authentication public-keys personal-laptop key 'AAAAC3NzaC1lZDI1NTE5AAAAIL2KquF27lDeth4UDF7A0cM/eLjRYsyq+kK24mUfhP6k'
set system login user vyos authentication public-keys personal-laptop type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system static-host-mapping host-name unifi inet 10.67.0.5

set system syslog host 10.66.1.104 facility kern level 'warning'
set system syslog host 10.66.1.104 protocol 'tcp'
set system syslog host 10.66.1.104 port '6001'
set system syslog host 10.66.1.104 format 'octet-counted'

# set system task-scheduler task backup-config crontab-spec '30 0 * * *'
# set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

set system time-zone 'America/New_York'
