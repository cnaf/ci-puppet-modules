class gpfs_repo {
  file { 'gpfs-repo':
    ensure => file,
    path   => '/etc/yum.repos.d/gpfs.repo',
    owner  => 'root',
    source => 'puppet:///modules/gpfs_repo/gpfs.repo',
  }
}

