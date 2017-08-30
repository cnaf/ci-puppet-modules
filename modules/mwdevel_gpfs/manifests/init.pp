class mwdevel_gpfs($version = "3.4.0-17") {
  require mwdevel_gpfs_repo
  require mwdevel_base_build_env

  if $version =~ /^3./ {

    $gpfs_packages = ['gpfs.base', 'gpfs.docs', 'gpfs.gpl', 'gpfs.msg.en_US']
    package {
        $gpfs_packages: ensure => $version
    }

  } else {

    $gpfs_packages = ['gpfs.base', 'gpfs.docs', 'gpfs.gpl', 'gpfs.msg.en_US', 'gpfs.ext']
    package {
        $gpfs_packages: ensure => $version
    }

    if $version == "4.2.0-3" {
      package {
          'gpfs.gskit': ensure => '8.0.50-47'
      }
    }
    if $version == "4.2.3-4" {
      package {
          'gpfs.gskit': ensure => '8.0.50-57'
      }
    }
  }

  file { '/etc/profile.d/gpfs_env.sh':
    content => 'export PATH=$PATH:/usr/lpp/mmfs/bin/',
    require => Package['gpfs.base'],
  }
}
