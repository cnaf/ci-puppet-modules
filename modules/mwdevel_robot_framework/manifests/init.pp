class mwdevel_robot_framework {
  require mwdevel_python

  $pip = 'pip'

  if $lsbmajdistrelease == '5' {
    $pip = 'pip2.6'
  }

  exec { 'install-robotframework':
    command => "${pip} install robotframework",
    path    => ['/bin', '/usr/bin'],
  }
}
