class nagios::client::install {
  package { [ "nrpe", "nagios-plugins-all"]:
    ensure => latest,
  }
}
