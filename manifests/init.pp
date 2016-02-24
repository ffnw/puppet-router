class router (
  
) inherits router::params {

  class { 'router::config': }

  contain router::config

}
