class maven_repo {
  case $operatingsystem {
    centos, Scientific : { $is_redhat = true }
    default            : { fail('Unrecognized operating system for storm_repos.') }
  }

  case $lsbmajdistrelease {
    5 : { $maven_repo = 'apache-maven-epel-5.repo' }
    6 : { $maven_repo = 'apache-maven.repo' }
  }

  file { 'apache-maven.repo':
    path   => '/etc/yum.repos.d/apache-maven.repo',
    ensure => file,
    source => "puppet:///modules/maven_repo/${maven_repo}"
  }
}
