class mwdevel_docker {
  case $operatingsystem {
    centos, Scientific : { $is_redhat = true }
    default            : { fail('Unrecognized operating system for docker module.') }
  }

  case $lsbmajdistrelease {
    '5'     : {
      warning('docker is not available on centos/SL 5!')
    }
    '6'     : {
      package { 'docker-io': ensure => latest, } ->
      service { 'docker': ensure => running, }
    }
    '7'     : {
      package { 'docker': ensure => latest, } ->
      service { 'docker': ensure => running, }
    }
    default : {
      fail('Unsupported OS release for docker module.')
    }
  }
}
