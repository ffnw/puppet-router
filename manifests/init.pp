class router (
  
) inherits router::params {

  contain router::config

  class { 'router::config': }

}
