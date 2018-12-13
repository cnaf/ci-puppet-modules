class mwdevel_python {

  if $lsbmajdistrelease == '7' {
    $python_packages = ['python', 'python-setuptools', 'python2-pip']
  } else {
    $python_packages = ['python', 'python-setuptools', 'python-pip']
  }

  package { $python_packages:
    ensure  => present,
    require => Package['epel-release'],;
  }
}
