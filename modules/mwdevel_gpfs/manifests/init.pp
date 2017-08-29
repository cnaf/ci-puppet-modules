class mwdevel_gpfs($version = "3.4.0-17") {
  require mwdevel_gpfs_repo
  require mwdevel_base_build_env

  $gpfs_packages = $version ? {
    "4.1.1-14", "4.2.0-3", "latest" => ['gpfs.base', 'gpfs.docs', 'gpfs.gpl', 'gpfs.msg.en_US', 'gpfs.gskit', 'gpfs.ext'],
    default => ['gpfs.base', 'gpfs.docs', 'gpfs.gpl', 'gpfs.msg.en_US']
  }

  package { $gpfs_packages: ensure => $version, }

  file { '/etc/profile.d/gpfs_env.sh':
    content => 'export PATH=$PATH:/usr/lpp/mmfs/bin/',
    require => Package['gpfs.base'],
  }
}
