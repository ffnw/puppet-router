class router (
  Array[String] $subnet  = $router::params::subnet,
  Array[String] $subnet6 = $router::params::subnet6,
) inherits router::params {

  class { 'router::config': }

  contain router::config

}
