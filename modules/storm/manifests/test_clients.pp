class storm::test_clients {
  include test_ca
  include test_vos

  Package {
    ensure => latest, }

  $packages = [
    'java-1.6.0-openjdk',
    'openldap-clients',
    'globus-gass-copy-progs',
    'emi-storm-srm-client-mp',
    'lcg-util',
    'dcache-srmclient',
    'git']

  package { $packages: require => [Class['test_ca'], Class['test_vos'], Class['emi3_release']], }
}
