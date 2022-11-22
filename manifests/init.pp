# @summary configure /etc/hosts entries
#
# @param hosts
#   Hash of hosts entries that contain all the parameters that the
#   Puppet hosts resource can use.
#   Example:
#   profile_hosts::hosts:
#     "localhost":
#       comment: "localhost ipv4"
#       ensure: "present"
#       host_aliases:
#         - "localhost.localdomain"
#         - "localhost4"
#         - "localhost4.localdomain4"
#       ip: "127.0.0.1"
#       target: "/etc/hosts"
#
# @example
#   include profile_hosts
class profile_hosts (
  Hash $hosts
) {
  $host_defaults = {
    ensure => 'present',
    target => '/etc/hosts',
  }

  if ( ! empty($hosts) ) {
    ensure_resources('host', $hosts, $host_defaults )
  }
}
