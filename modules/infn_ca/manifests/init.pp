class infn_ca {
  include egi_trust_anchors

  $ca_packages = ['ca_INFN-CA-2006', 'ca_INFN-CA-2015']

  package { $ca_packages:
    ensure  => latest,
    require => Class['egi_trust_anchors']
  }

}
