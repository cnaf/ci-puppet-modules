class mwdevel_python {
  include epel

  $python_packages = ['python', 'python-setuptools', 'python-pip']

  package { $python_packages:
    ensure  => present,
    require => Class['epel'],
  }
}
