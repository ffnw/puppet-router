class router::config {

  file_line { 'backbone_sysctl_forwarding_ipv4':
    ensure => present,
    path   => '/etc/sysctl.conf',
    line   => 'net.ipv4.ip_forward=1',
  }

  file_line { 'backbone_sysctl_forwarding_ipv6_all':
    ensure => present,
    path   => '/etc/sysctl.conf',
    line   => 'net.ipv6.conf.all.forwarding=1',
  }

  file_line { 'backbone_sysctl_forwarding_ipv6_all':
    ensure => present,
    path   => '/etc/sysctl.conf',
    line   => 'net.ipv6.conf.default.forwarding=1',
  }

}

