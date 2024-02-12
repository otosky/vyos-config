# VyOS Config

## VLANs

| VLAN | Name       | Subnet          |
| :-:  | :-:        | :-:             |
| 0    | LAN        | 10.66.0.0/24    |
| 10   | SERVERS    | 10.66.1.0/24    |
| 20   | TRUSTED    | 10.66.2.0/24    |
| 30   | GUEST      | 192.168.50.0/24 |
| 40   | IOT        | 10.66.3.0/24    |
|      | WIREGUARD  | 10.66.5.0/24    |
|      | CONTAINERS | 10.67.0.0/24    |

> DHCP will only hand out IPs from .200-.254

## Containers

| Name                       | Repo                                             | IP        |
| :-:                        | :-:                                              | :-:       |
| bind                       | docker.io/internetsystemsconsortium/bind9:9.19   | 10.67.0.2 |
| dnsdist                    | docker.io/powerdns/dnsdist-18:1.8.0              | 10.67.0.3 |
| haproxy (for k8s)          | docker.io/library/haproxy:2.7.8                  | 10.67.0.4 |
| unifi-controller           | ghcr.io/jacobalberty/unifi-docker:v7.5.174       | 10.67.0.5 |
| cloudflare-ddns            | docker.io/favonia/cloudflare-ddns:1.9.4          |           |
| udp-broadcast relay (mdns) | ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27 |           |
| udp-broadcast relay (upnp) | ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27 |           |

## DNS

```mermaid
flowchart LR
      A[ User ];
      B[ dnsdist ];
      C{{ is .toskbot.xyz? }};
      D[bind];
      E{{ is from GUEST vlan? }};
      F[ cloudflare ];
      G[ nextdns ];
      A-- request --> B;
      B --> C;
      C-- Yes --> D;
      C-- No --> E;
      E-- Yes --> F;
      E-- Yes --> G;
```

- dnsdist routes dns requests to different nameservers based on destination domain, source subnet, etc.
- bind acts as the main local nameserver where static entries and k8s-populated (external-dns) entries are added
- specific subnets can have dns resolved by nextdns using separate nextdns profiles
- guest network goes to cloudflare
