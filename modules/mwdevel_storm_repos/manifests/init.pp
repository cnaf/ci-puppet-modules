class mwdevel_storm_repos ($repo_scope = 'develop',) {
  include mwdevel_umd_repo
  include mwdevel_egi_trust_anchors
  include mwdevel_test_ca

  case $operatingsystem {
    centos, Scientific : { $is_redhat = true }
    default            : { fail('Unrecognized operating system for storm_repos.') }
  }

  case $lsbmajdistrelease {
    5       : {
      $storm_repo_file = "puppet:///modules/mwdevel_storm_repos/storm_${repo_scope}_sl5.repo"
      $storm_repo_file_src = "puppet:///modules/mwdevel_storm_repos/storm_${repo_scope}_sl5_src.repo"
    }
    6       : {
      $storm_repo_file = "puppet:///modules/mwdevel_storm_repos/storm_${repo_scope}_sl6.repo"
      $storm_repo_file_src = "puppet:///modules/mwdevel_storm_repos/storm_${repo_scope}_sl6_src.repo"
    }

    default : {
      fail("Unrecognized scientific linux major version: ${lsbmajdistrelease}")
    }
  }

  file { 'storm-devel.repo':
    ensure => file,
    path   => '/etc/yum.repos.d/storm-devel.repo',
    source => $storm_repo_file,
  }

  file { 'storm-devel_src.repo':
    ensure => file,
    path   => '/etc/yum.repos.d/storm-devel_src.repo',
    source => $storm_repo_file_src,
  }
}
