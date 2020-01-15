class mwdevel_terena_ca {
  include mwdevel_egi_trust_anchors

  package { 'ca_TERENA-eScience-SSL-CA-*':
    ensure  => latest,
    require => Class['mwdevel_egi_trust_anchors'],
  }

}
