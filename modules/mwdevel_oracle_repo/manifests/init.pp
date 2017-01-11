class mwdevel_oracle_repo {
  file { 'oracle-repo':
    ensure  => file,
    path    => '/etc/yum.repos.d/oracle.repo',
    owner   => 'root',
    content => template('mwdevel_oracle_repo/oracle.repo.erb'),
  }
}

