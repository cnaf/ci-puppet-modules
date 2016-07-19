class yum_utils {
  include emi3_release

  package { 'yum-utils':
    ensure  => present,
    require => Class['emi3_release']
  }

  define builddep {
    Exec {
      path => '/bin:/sbin:/usr/bin:/usr/sbin' }

    exec { "yum-builddep-${title}": command => "yum-builddep -y ${title}" }
  }
}

