#!/bin/vbash

set system domain-name 'toskbot.xyz'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIMyYn4k4V+myBBl79Nt3t7EZugvz9A+d3ZbKyaP1w7J5'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog file /home/vyos/log.txt facility kern level 'warning'
set system syslog file /home/vyos/log.txt archive size 512
set system syslog file /home/vyos/log.txt archive files 20

# todo: send to k8s-vector and replace syslog file
# set system syslog host 10.45.0.2 facility kern level 'warning'
# set system syslog host 10.45.0.2 protocol 'tcp'
# set system syslog host 10.45.0.2 port '6001'
# set system syslog host 10.45.0.2 format 'octet-counted'

# set system task-scheduler task backup-config crontab-spec '30 0 * * *'
# set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

set system time-zone 'America/New_York'
