class gpfs_repo {
  file { 'gpfs-repo':
    path   => '/etc/yum.repos.d/gpfs.repo',
    ensure => file,
    owner  => 'root',
    source => 'puppet:///modules/gpfs_repo/gpfs.repo'
  }
}

