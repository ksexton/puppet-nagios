class nagios::client {
  include nagios::client::params, nagios::client::config, nagios::client::install, nagios::client::service
  @@nagios_host { $fqdn:
    ensure => present,
    alias => $hostname,
    address => $ipaddress,
    use => "linux-server",
    target => "/etc/nagios/hosts.d/$fqdn.cfg",
    notify => Service["nagios"],
  }

  @@nagios_service { "check_ping_${hostname}":
    use => "local-service",
    host_name => "$fqdn",
    service_description => "check_ping",
    check_command => "check_ping!100.0,20%!500.0,60%",
    target => "/etc/nagios/hosts.d/$fqdn.cfg",
  }
}
