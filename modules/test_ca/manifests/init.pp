class test_ca {
  file { 'test-ca.repo':
    ensure => file,
    path   => '/etc/yum.repos.d/test-ca.repo',
    source => 'puppet:///modules/test_ca/test-ca.repo',
  }

  package {
    'igi-test-ca':
      ensure  => latest,
      require => File['test-ca.repo'],;

    'igi-test-ca-2':
      ensure  => latest,
      require => File['test-ca.repo'],;

    'igi-test-ca-256':
      ensure  => latest,
      require => File['test-ca.repo'],;
  }
}
