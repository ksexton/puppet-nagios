class nagios::server::install {
  package { nagios:
    ensure => latest;
  }
}
