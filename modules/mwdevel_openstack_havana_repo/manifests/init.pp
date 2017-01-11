class mwdevel_openstack_havana_repo {
  case $operatingsystem {
    centos, Scientific : { $is_redhat = true }
    default            : { fail('Unrecognized operating system for storm_repos.') }
  }

  case $lsbmajdistrelease {
    6       : { $is_redhat_6 = true }
    default : { fail("Unrecognized scientific linux major version: ${lsbmajdistrelease}") }
  }

  file { 'epel-openstack-havana.repo':
    ensure => file,
    path   => '/etc/yum.repos.d/epel-openstack-havana.repo',
    source => 'puppet:///modules/mwdevel_openstack_havana_repo/epel-openstack-havana.repo',
  }
}
