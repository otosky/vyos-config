#!/bin/vbash

set system domain-name 'toskbot.xyz'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys oliver key 'AAAAC3NzaC1lZDI1NTE5AAAAILuYLhBEIuxfpFCKQL70vs7ND6axFrecFBUISY+fUjM2'
set system login user vyos authentication public-keys oliver type 'ssh-ed25519'

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
