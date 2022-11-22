# @summary configure /etc/hosts entries
#
# @param hosts
#   Hash of hosts entries that contain all the parameters that the
#   Puppet hosts resource can use.
#   See README.md for example hiera data.
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
