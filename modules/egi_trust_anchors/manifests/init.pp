class egi_trust_anchors {
  file { 'egi-trust-anchors.repo':
    path   => '/etc/yum.repos.d/egi-trust-anchors.repo',
    ensure => file,
    source => 'puppet:///modules/egi_trust_anchors/egi-trust-anchors.repo'
  }
}

