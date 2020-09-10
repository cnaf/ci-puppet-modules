# @summary Install Python Robot Framework
class mwdevel_robot_framework {

  require mwdevel_python

  $el = $::operatingsystemmajrelease

  if $el == '6' {

    exec { 'install-robotframework':
      command => 'pip2.7 install robotframework',
      path    => ['/bin', '/usr/bin'],
    }

    ensure_packages(['robotframework-httplibrary'], {
      ensure   => present,
      provider => 'pip2.7',
      require  => [ Package['python-pip'], Exec['install-robotframework'] ],
    })
  }

  if $el == '7' {

    exec { 'install-robotframework':
      command => 'pip install robotframework',
      path    => ['/bin', '/usr/bin'],
    }

    ensure_packages(['robotframework-httplibrary'], {
      ensure   => present,
      provider => 'pip',
      require  => [ Package['python2-pip'], Exec['install-robotframework'] ],
    })

  }
}
