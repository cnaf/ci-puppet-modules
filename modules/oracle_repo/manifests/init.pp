class oracle_repo {
  file { 'oracle-repo':
    path    => '/etc/yum.repos.d/oracle.repo',
    ensure  => file,
    owner   => 'root',
    content => template('oracle_repo/oracle.repo.erb')
  }
}

