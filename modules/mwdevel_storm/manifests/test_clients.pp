class mwdevel_storm::test_clients {
  include mwdevel_test_ca
  include mwdevel_test_vos

  Package {
    ensure => latest, }

  if $lsbmajdistrelease == '6' {

    $packages = [
      'java-1.6.0-openjdk',
      'openldap-clients',
      'globus-gass-copy-progs',
      'emi-storm-srm-client-mp',
      'lcg-util',
      'dcache-srmclient',
      'git']
  }

  if $lsbmajdistrelease == '7' {

    $packages = [
      'openldap-clients',
      'globus-gass-copy-progs',
      'gfal2-util',
      'gfal2-all',
      'dcache-srmclient',
      'git']
  }

  package { $packages: require => [Class['mwdevel_test_ca'], Class['mwdevel_test_vos'], Class['mwdevel_umd_repo']], }
}
