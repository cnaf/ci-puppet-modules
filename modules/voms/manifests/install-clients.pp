class voms::install_clients {
  require test_vos

  package { 'install-voms-clients3':
    name    => 'voms-clients3',
    ensure  => latest,
    require => Class['emi3_release']
  }

}
