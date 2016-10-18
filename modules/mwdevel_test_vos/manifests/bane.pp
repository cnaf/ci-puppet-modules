class mwdevel_test_vos::bane {
  include mwdevel_voms

  mwdevel_voms::client { 'bane':
    servers => [{
        server => 'vgrid02.cnaf.infn.it',
        port   => '15010',
        dn     => '/C=IT/O=INFN/OU=Host/L=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=IT/O=INFN/CN=INFN CA',
      }
      ,],
  }
}
