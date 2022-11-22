# profile_hosts

[![pdk-validate](https://github.com/ncsa/puppet-profile_hosts/actions/workflows/pdk-validate.yml/badge.svg)](https://github.com/ncsa/puppet-profile_hosts/actions/workflows/pdk-validate.yml)
[![yamllint](https://github.com/ncsa/puppet-profile_hosts/actions/workflows/yamllint.yml/badge.svg)](https://github.com/ncsa/puppet-profile_hosts/actions/workflows/yamllint.yml)

NCSA Common Puppet Profiles - configure hosts entries in /etc/hosts

## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with profile_hosts](#setup)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Dependencies](#dependencies)
1. [Reference](#reference)


## Description

This puppet profile customizes a host to manage hosts entries in /etc/hosts.


## Setup

Include profile_hosts in a puppet profile file:
```
include ::profile_hosts
```


## Usage

The following parameters will need to be set via Hiera:
```yaml
profile_hosts::hosts:
  "localhost":
    comment: "localhost ipv4"
    ensure: "present"
    host_aliases:
      - "localhost.localdomain"
      - "localhost4"
      - "localhost4.localdomain4"
    ip: "127.0.0.1"
    target: "/etc/hosts"
```

## Dependencies

- n/a


## Reference

See: [REFERENCE.md](REFERENCE.md)

