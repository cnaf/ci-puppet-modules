class java ($java_version = 8) {
  case $java_version {
    6       : {
      $java_package_name = 'java-1.6.0-openjdk-devel'
      $java_home = '/usr/lib/jvm/jre-1.6.0-openjdk.x86_64'
      $javac_home = '/usr/lib/jvm/java-1.6.0-openjdk.x86_64'
    }
    7       : {
      $java_package_name = 'java-1.7.0-openjdk-devel'
      $java_home = '/usr/lib/jvm/jre-1.7.0-openjdk.x86_64'
      $javac_home = '/usr/lib/jvm/java-1.7.0-openjdk.x86_64'
    }
    8       : {
      $java_package_name = 'java-1.8.0-openjdk-devel'
      $java_home = '/usr/lib/jvm/jre-1.8.0-openjdk.x86_64'
      $javac_home = '/usr/lib/jvm/java-1.8.0-openjdk.x86_64'
    }

    default : {
      fail('Unsupported Java version: $java_version')
    }
  }

  class { 'java':
    version => 'latest',
    package => $java_package_name,
  }

  file { 'java_home.sh':
    path    => '/etc/profile.d/java_home.sh',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('java/java_home.sh.erb'),
    require => Class['java']
  }

  file { 'java.conf':
    path    => '/etc/java/java.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('java/java_conf.erb'),
    require => Class['java']
  }

  file { 'update-alternatives-script.sh':
    path    => '/tmp/update-java-alternatives.sh',
    replace => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('java/update_alternatives.sh.erb')
  }

  exec { 'run-update-alternatives':
    command => '/tmp/update-java-alternatives.sh',
    require => [File['update-alternatives-script.sh'], Class['java']]
  }

}
