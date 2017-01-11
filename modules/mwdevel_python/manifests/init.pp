class mwdevel_python {
  Exec {
    path => ['/bin', '/usr/bin'], }

  case $lsbmajdistrelease {
    5       : {
      $python_packages = ['python26', 'python26-distribute']
      $easy_install = 'easy_install-2.6'
      $pip = 'pip2.6'
    }

    6       : {
      $python_packages = ['python', 'python-setuptools']
      $easy_install = 'easy_install'
      $pip = 'pip'
    }

    7       : {
      $python_packages = ['python', 'python-setuptools']
      $easy_install = 'easy_install'
      $pip = 'pip'
    }
    default : {
      fail('Unsupported OS release')
    }
  }

  package { $python_packages: ensure => present, }

  exec { 'install-pip':
    command => "${easy_install} pip",
    require => Package[$python_packages],
  }

}
