# @summary Install Python
class mwdevel_python {

  $el = $::operatingsystemmajrelease
  if $el == '7' {
    $python_packages = ['python', 'python-setuptools', 'python2-pip']
  } else {
    $python_packages = ['python', 'python-setuptools', 'python-pip']
  }

  package { $python_packages:
    ensure  => present,
  }
}
