# @summary configure test.vo
#
class mwdevel_test_vos::test_vo {
  include mwdevel_voms

  mwdevel_voms::client { 'test.vo':
    servers => [{
        server => 'vgrid02.cnaf.infn.it',
        port   => '15000',
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/L=Frascati/O=Istituto Nazionale di Fisica Nucleare/OU=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      }
    ],
  }
}
