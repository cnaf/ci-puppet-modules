class jenkins_slave ($maven_servers_data = [], $java_version = 8) {
  include emi3_release
  require maven_repo

  if $lsbmajdistrelease == 6 {
    require openstack_havana_repo
  }

  class { 'maven_settings':
    servers_data => $maven_servers_data
  }

  User {
    managehome => true }

  case $lsbmajdistrelease {
    5 : {
      user { 'jenkins':
        name   => 'jenkins',
        ensure => 'present'
      }
    }

    6 : {
      user { 'jenkins':
        name   => 'jenkins',
        ensure => 'present'
      }
    }
  }

  ssh_authorized_key { 'jenkins-radiohead-key':
    ensure  => 'present',
    user    => 'jenkins',
    key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAs+blArs0q6G39nfcmakCsuuyAjQF/SM4igDY87Re9Q43TAz8JHiKZOBt2Dnh1Rjh3BpSDleFcfDND3fT6fZ+46g/iQqYbf1oB8WeHYnzt/kOC3KX/QmcG6zlhi3fhi6CE6pi24ApLABiaA2urDA7/793w1CaxdixDgXsZo2lyxExFVMLMiVybDrjyErJ83PIdnsJ9U/p//r4WocSs16CpLhKgohN7QzVlNqTsBrnHWGHnLDXLsRvbKaHgiQvd9YznPzg72AaQ+aB+tryw9b8H/u2xc+akL96DixSp1KnF82Bmk+rBFZOcnUAMNKUfdQdBPbQMYVvD/VM++ZLLuFFsQ==',
    type    => 'ssh-rsa',
    require => User['jenkins']
  }

  file { "/home/jenkins/${fqdn}":
    ensure  => 'directory',
    owner   => 'jenkins',
    group   => 'jenkins',
    mode    => '0750',
    require => User['jenkins']
  }

  package { 'apache-maven': ensure => present }

  if $lsbmajdistrelease == 6 {
    package { 'yum-cron': ensure => present }

    service { 'yum-cron':
      require => Package['yum-cron'],
      enable  => true
    }
  }

  if $lsbmajdistrelease == 5 {
    package { 'yum-autoupdate': ensure => present }

    service { 'yum':
      require => Package['yum-autoupdate'],
      enable  => true
    }
  }

  if $lsbmajdistrelease == 6 {
    package { 'python-novaclient': ensure => present }
  }
}
