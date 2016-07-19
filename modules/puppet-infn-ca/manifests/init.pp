class puppet-infn-ca {

  include puppet-egi-trust-anchors

  $ca_packages = ["ca_INFN-CA-2006","ca_INFN-CA-2015"]

  package { $ca_packages:
    ensure  => latest,
    require => Class['puppet-egi-trust-anchors']
  }

}
