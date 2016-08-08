class centos_utils::yum_conf {
  file { 'yum.conf':
    ensure => file,
    path   => '/etc/yum.conf',
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet:///modules/centos_utils/yum.conf',
  }
}
