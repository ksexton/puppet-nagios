class nagios::server::service {
  service { "nagios":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class['nagios::server::install'],
    subscribe => Class['nagios::server::config']

  }
}
