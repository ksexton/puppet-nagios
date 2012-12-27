class nagios::client::config {
  file { "/etc/nagios/nrpe.cfg":
    content => template("nagios/nrpe.cfg.erb"),
    require => Class['nagios::client::install'],
    notify => Service["nrpe"],
  }
}
