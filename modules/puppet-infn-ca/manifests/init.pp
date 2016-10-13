class puppet-infn-ca {
  include puppet-egi-trust-anchors

  package { "ca_INFN-CA-*":
    ensure  => latest,
    require => Class['puppet-egi-trust-anchors']
  }

}
