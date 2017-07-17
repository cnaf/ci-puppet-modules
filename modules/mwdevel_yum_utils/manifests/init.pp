class mwdevel_yum_utils {
  include mwdevel_umd_repo

  package { 'yum-utils':
    ensure  => present,
    require => Class['mwdevel_umd_repo'],
  }

  define builddep {
    Exec {
      path => '/bin:/sbin:/usr/bin:/usr/sbin', }

    exec { "yum-builddep-${title}": command => "yum-builddep -y ${title}", }
  }
}

