class mwdevel_python {
  $python_packages = ['python', 'python-setuptools', 'python-pip']

  package { $python_packages:
    ensure  => present,
    require => Package['epel-release'],;
  }
}
