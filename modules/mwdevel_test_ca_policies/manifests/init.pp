class mwdevel_test_ca_policies {
  require mwdevel_test_ca

  $trust_info_dir = '/etc/grid-security/certificates'

  file {
    'classic_profile':
      ensure => file,
      path   => "${trust_info_dir}/policy-test-classic.info",
      source => 'puppet:///modules/mwdevel_test_ca_policies/policy-test-classic.info',;

    'iota_profile':
      ensure => file,
      path   => "${trust_info_dir}/policy-test-iota.info",
      source => 'puppet:///modules/mwdevel_test_ca_policies/policy-test-iota.info',;
  }

}
