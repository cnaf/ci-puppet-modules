class jenkins_slave::yum_conf {
  file { 'yum.conf':
    ensure => file,
    path   => '/etc/yum.conf',
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet:///modules/jenkins_slave/yum.conf',
  }
}
