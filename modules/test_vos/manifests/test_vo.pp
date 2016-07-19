class test_vos::test_vo {
  include voms

  voms::client { 'test.vo':
    servers => [{
        server => 'vgrid02.cnaf.infn.it',
        port   => '15000',
        dn     => '/C=IT/O=INFN/OU=Host/L=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=IT/O=INFN/CN=INFN Certification Authority'
      }
      ]
  }
}
