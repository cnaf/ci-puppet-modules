class infn_ca {
  include egi_trust_anchors

  package { "ca_INFN-CA-*":
    ensure  => latest,
    require => Class['egi_trust_anchors'],
  }

}
