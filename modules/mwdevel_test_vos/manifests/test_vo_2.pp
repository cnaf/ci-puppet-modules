class mwdevel_test_vos::test_vo_2 {
  include mwdevel_voms

  mwdevel_voms::client { 'test.vo.2':
    servers => [{
        server => 'vgrid02.cnaf.infn.it',
        port   => '15001',
        dn     => '/C=IT/O=INFN/OU=Host/L=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=IT/O=INFN/CN=INFN Certification Authority',
      }
      ,],
  }
}
