class nagios::client::service {
  service { "nrpe":
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
    require => Class['nagios::client::install'],
    subscribe => Class['nagios::client::config'],
  }
}
