# @summary configure test.vo.2
#
class mwdevel_test_vos::test_vo_2 {
  include mwdevel_voms

  mwdevel_voms::client { 'test.vo.2':
    servers => [{
        server => 'vgrid02.cnaf.infn.it',
        port   => '15001',
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Lazio/L=Frascati/O=Istituto Nazionale di Fisica Nucleare/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=NL/ST=Noord-Holland/L=Amsterdam/O=TERENA/CN=TERENA eScience SSL CA 3',
      }
    ],
  }
}
