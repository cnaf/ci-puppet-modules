class test_vos::dteam {
  include voms

  voms::client { 'dteam':
    servers => [{
        server => 'voms.hellasgrid.gr',
        port   => '15001',
        dn     => '/C=GR/O=HellasGrid/OU=hellasgrid.gr/CN=voms.hellasgrid.gr',
        ca_dn  => '/C=GR/O=HellasGrid/OU=Certification Authorities/CN=HellasGrid CA 2006',
      }
      ,],
  }
}
