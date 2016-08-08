class oracle_repo {
  file { 'oracle-repo':
    ensure  => file,
    path    => '/etc/yum.repos.d/oracle.repo',
    owner   => 'root',
    content => template('oracle_repo/oracle.repo.erb'),
  }
}

