class mwdevel_umd_repo (
  $umd_repo_version = 4,) {
  case $umd_repo_version {
    3       : {
      case $lsbmajdistrelease {
        '6'     : {
          $umd_repo             = 'http://repository.egi.eu/sw/production/umd/3/sl6/x86_64/updates/umd-release-3.14.2-1.el6.noarch.rpm'
          $umd_repo_install_cmd = "yum install -y ${umd_repo}"
          $umd_repo_file        = '/etc/yum.repos.d/UMD-3-base.repo'
        }
        default : {
          fail('Unsupported platform for UMD-3')
        }
      }
    }
    4       : {
      case $lsbmajdistrelease {
        '6'     : {
          $umd_repo             = 'http://repository.egi.eu/sw/production/umd/4/sl6/x86_64/updates/umd-release-4.1.3-1.el6.noarch.rpm'
          $umd_repo_install_cmd = "yum install -y ${umd_repo}"
          $umd_repo_file        = '/etc/yum.repos.d/UMD-4-base.repo'
        }

        '7'     : {
          $umd_repo             = 'http://repository.egi.eu/sw/production/umd/4/centos7/x86_64/updates/umd-release-4.1.3-1.el7.centos.noarch.rpm'
          $umd_repo_install_cmd = "yum install -y ${umd_repo}"
          $umd_repo_file        = '/etc/yum.repos.d/UMD-4-base.repo'

        }
        default : {
          fail('Unsupported platform for UMD-4')
        }
      }
    }
    default : {
      fail("Unsupported umd repo version: ${umd_repo_version}")
    }
  }

  Exec {
    path => '/bin:/sbin:/usr/bin:/usr/sbin', }

  exec { 'umd-repo':
    command => $umd_repo_install_cmd,
    onlyif  => "test ! -f ${umd_repo_file}",;
  }

  package { 'epel-release': ensure => latest, }
}
