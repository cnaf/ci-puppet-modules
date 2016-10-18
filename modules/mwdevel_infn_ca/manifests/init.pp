class mwdevel_infn_ca {
  include mwdevel_egi_trust_anchors

  package { "ca_INFN-CA-*":
    ensure  => latest,
    require => Class['mwdevel_egi_trust_anchors'],
  }

}
