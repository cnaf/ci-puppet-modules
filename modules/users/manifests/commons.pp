class users::commons {
  exec { 'enable-wheel-sudoers': command => "/bin/sed -i 's,#\s%wheel.*NOPASSWD: ALL,%wheel\t\tALL=(ALL)\tNOPASSWD: ALL,g' /etc/sudoers", 
  }
}
