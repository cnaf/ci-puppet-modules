class mwdevel_test_vos::test_vo {
  include mwdevel_voms

  mwdevel_voms::client { 'test.vo':
    servers => [{
        server => 'vgrid02.cnaf.infn.it',
        port   => '15000',
        dn     => '/C=IT/O=INFN/OU=Host/L=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=IT/O=INFN/CN=INFN Certification Authority',
      },
      {
        server => 'voms.example',
        port   => '15000',
        dn     => '/C=IT/O=IGI/CN=voms.example',
        ca_dn  => '/C=IT/O=IGI/CN=Test CA',
      }
    ],
  }
}