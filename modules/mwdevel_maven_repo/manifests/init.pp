class mwdevel_maven_repo {
  case $operatingsystem {
    centos, Scientific : { $is_redhat = true }
    default            : { fail('Unrecognized operating system for storm_repos.') }
  }

  case $lsbmajdistrelease {
    '5'     : { $maven_repo = 'apache-maven-epel-5.repo' }
    '6'     : { $maven_repo = 'apache-maven.repo' }
    default : { fail('Unsupported OS release') }
  }

  file { 'apache-maven.repo':
    ensure => file,
    path   => '/etc/yum.repos.d/apache-maven.repo',
    source => "puppet:///modules/mwdevel_maven_repo/${maven_repo}",
  }
}
