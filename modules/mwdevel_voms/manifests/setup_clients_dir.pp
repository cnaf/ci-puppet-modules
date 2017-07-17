#
# == Class: voms::setup-clients-dir
# Install voms-clients package.
#
class mwdevel_voms::setup_clients_dir {
  require mwdevel_umd_repo
  require mwdevel_egi_trust_anchors

  file { '/etc/grid-security/vomsdir':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
    purge   => true,
    recurse => true,
  }

  file { '/etc/vomses':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
    purge   => true,
    recurse => true,
  }

}
