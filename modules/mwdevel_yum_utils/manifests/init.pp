class mwdevel_yum_utils {
  include mwdevel_emi3_release

  package { 'yum-utils':
    ensure  => present,
    require => Class['mwdevel_emi3_release'],
  }

  define builddep {
    Exec {
      path => '/bin:/sbin:/usr/bin:/usr/sbin', }

    exec { "yum-builddep-${title}": command => "yum-builddep -y ${title}", }
  }
}

