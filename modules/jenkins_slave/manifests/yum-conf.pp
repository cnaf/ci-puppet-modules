class jenkins_slave::yum_conf {
  file { 'yum.conf':
    path   => '/etc/yum.conf',
    owner  => root,
    group  => root,
    mode   => '0644',
    ensure => file,
    source => 'puppet:///modules/jenkins_slave/yum.conf',
  }
}
