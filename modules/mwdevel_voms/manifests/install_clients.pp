class mwdevel_voms::install_clients {
  require mwdevel_test_vos

  package { 'install-voms-clients3':
    ensure  => latest,
    name    => 'voms-clients3',
    require => Class['mwdevel_emi3_release'],
  }

}
