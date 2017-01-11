# == Example
#
#     voms::client{'ops':
#        servers  => [{server => 'voms.cern.ch',
#                   port   => '15009',
#                   dn    => '/DC=ch/DC=cern/OU=computers/CN=voms.cern.ch',
#                   ca_dn => '/DC=ch/DC=cern/CN=CERN Trusted Certification Authority'
#                  },
#                  {server => 'lcg-voms.cern.ch',
#                   port   => '15009',
#                   dn    => '/DC=ch/DC=cern/OU=computers/CN=lcg-voms.cern.ch',
#                   ca_dn => '/DC=ch/DC=cern/CN=CERN Trusted Certification Authority'
#                  }]
#
# == Authors
#
# CERN IT/GT/DMS <it-dep-gt-dms@cern.ch>
# CERN IT/PES/PS <it-dep-pes-ps@cern.ch>
#
define mwdevel_voms::client (
  $vo      = $name,
  $servers = []) {
  ensure_resource('class', 'mwdevel_voms::setup_clients_dir')

  file { "/etc/grid-security/vomsdir/${vo}":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
    recurse => true,
    purge   => true,
    require => File['/etc/grid-security/vomsdir'],
  }

  # Set defaults for the rest of this scope.
  File {
    owner => root,
    group => root,
    mode  => '0644',
  }

  $yaml     = inline_template('
---
<% @servers.each do |s| -%>
/etc/grid-security/vomsdir/<%= @vo %>/<%= s["server"] %>.lsc:
   content: "<%= s["dn"] %>\n<%= s["ca_dn"] %>\n"
   require: File[/etc/grid-security/vomsdir/<%= @vo %>]

/etc/vomses/<%= @vo %>-<%= s["server"] %>:
   content: "\"<%= @vo %>\" \"<%= s["server"] %>\" \"<%= s["port"] %>\" \"<%= s["dn"] %>\" \"<%= @vo %>\" \"24\"\n"
   require: File[/etc/vomses]

<% end -%>

  ')

  $filedata = parseyaml($yaml)
  create_resources('file', $filedata)
}
