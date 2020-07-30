class mwdevel_grinder {

  archive { 'grinder-3.11':
    ensure         => 'present',
    url            => 'https://netix.dl.sourceforge.net/project/grinder/The%20Grinder%203/3.11/grinder-3.11-binary.zip',
    target         => '/opt',
    allow_insecure => true,
    checksum       => false,
    src_target     => '/tmp',
  }

  file { "/etc/profile.d/grinder.sh":
    content => 'export GRINDER_HOME="/opt/grinder-3.11"'
  }
}
