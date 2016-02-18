class router::config {

  file_line {
    default:
      ensure => present,
      path   => '/etc/sysctl.conf';
    'router-net.ipv4.ip_forward':
      line   => 'net.ipv4.ip_forward=1';
    'router-net.ipv6.conf.all.forwarding':
      line   => 'net.ipv6.conf.all.forwarding=1';
    'router-net.ipv6.conf.default.forwarding':
      line   => 'net.ipv6.conf.default.forwarding=1';
    'router-net.core.rmem_max':
      line   => 'net.core.rmem_max=83886080';
    'router-net.core.wmem_max':
      line   => 'net.core.wmem_max=83886080';
    'router-net.core.rmem_default':
      line   => 'net.core.rmem_max=83886080';
    'router-net.core.wmem_default':
      line   => 'net.core.wmem_max=83886080';
  }

}

