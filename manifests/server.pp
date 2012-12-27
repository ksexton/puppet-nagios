class nagios::server {
  include nagios::server::params, nagios::server::config, nagios::server::install, nagios::server::service
  Nagios_host <<||>>
  Nagios_service <<||>>
}
