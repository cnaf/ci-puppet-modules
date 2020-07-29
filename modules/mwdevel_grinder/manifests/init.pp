class mwdevel_grinder {

  archive { 'grinder-3.11':
    ensure         => 'present',
    url            => 'https://www.dropbox.com/s/2s974oqhyttgdjh/grinder-cnaf-3.11-binary.tar.gz',
    target         => '/opt',
    allow_insecure => true,
    checksum       => false,
  }

  file { "/etc/profile.d/grinder.sh":
    content => 'export GRINDER_HOME="/opt/grinder-3.11"'
  }
}
