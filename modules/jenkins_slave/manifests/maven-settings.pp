class jenkins_slave::maven_settings ($servers_data) {
  $maven_dir_settings = '/home/jenkins/.m2'
  $maven_file_settings = "${maven_dir_settings}/settings.xml"

  file { 'Create maven directory':
    path   => $maven_dir_settings,
    ensure => 'directory',
    owner  => 'jenkins',
    group  => 'jenkins',
    mode   => '0750'
  }

  file { 'settings.xml':
    path    => $maven_file_settings,
    owner   => 'jenkins',
    group   => 'jenkins',
    mode    => '0750',
    require => File['Create maven directory'],
    content => template('jenkins_slave/settings.xml.erb')
  }

}
