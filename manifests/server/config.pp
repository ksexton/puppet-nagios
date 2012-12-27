class nagios::server::config {
  file { ["/etc/nagios/hosts.d/", "/etc/nagios/services.d/"]:
    ensure => directory,
    require => Class['nagios::server::install'],
    mode => 644,
    recurse => true,
  }

  file { "/etc/nagios/nagios.cfg":
    content => template("nagios/nagios.cfg.erb"),
    require => Class['nagios::server::install'],
    notify => Service["nagios"],
  }


}
