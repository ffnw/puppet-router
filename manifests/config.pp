class router::config {

  file_line {
    default:
      ensure => present,
      path   => '/etc/sysctl.conf';
    'router-net.ipv4.ip_forward':
      line   => 'net.ipv4.ip_forward=1',
      match  => '^net.ipv4.ip_forward=';
    'router-net.ipv6.conf.all.forwarding':
      line   => 'net.ipv6.conf.all.forwarding=1',
      match  => '^net.ipv6.conf.all.forwarding=';
    'router-net.ipv6.conf.default.forwarding':
      line   => 'net.ipv6.conf.default.forwarding=1',
      match  => '^net.ipv6.conf.default.forwarding=';
    'router-net.core.rmem_max':
      line   => 'net.core.rmem_max=83886080',
      match  => '^net.core.rmem_max=';
    'router-net.core.wmem_max':
      line   => 'net.core.wmem_max=83886080',
      match  => '^net.core.wmem_max=';
    'router-net.core.rmem_default':
      line   => 'net.core.rmem_default=83886080',
      match  => '^net.core.rmem_default=';
    'router-net.core.wmem_default':
      line   => 'net.core.wmem_default=83886080',
      match  => '^net.core.wmem_default=';
  }

}

