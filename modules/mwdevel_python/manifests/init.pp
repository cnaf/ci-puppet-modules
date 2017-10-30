class mwdevel_python {
  $python_packages = ['python', 'python-setuptools', 'python-pip']

  package {
    'epel-release':
      ensure => present,;

    $python_packages:
      ensure  => present,
      require => Package['epel-release'],
  }
}
