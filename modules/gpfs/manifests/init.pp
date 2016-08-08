class gpfs {
  require gpfs_repo
  require base_build_env

  $gpfs_packages = ['gpfs.base', 'gpfs.docs', 'gpfs.gpl', 'gpfs.msg.en_US']

  package { $gpfs_packages: ensure => latest, }

  file { '/etc/profile.d/gpfs_env.sh':
    content => 'export PATH=$PATH:/usr/lpp/mmfs/bin/',
    require => Package['gpfs.base'],
  }
}
