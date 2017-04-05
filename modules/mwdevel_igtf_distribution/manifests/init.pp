class mwdevel_igtf_distribution {
  file { 'igtf_repo':
    ensure => file,
    path   => '/etc/yum.repos.d/igtf.repo',
    source => 'puppet:///modules/mwdevel_igtf_distribution/igtf.repo',
  }
}
