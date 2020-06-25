# @summary middleware users
class mwdevel_users::mw_users {
  include mwdevel_users::commons

  User {
    managehome => true,
    groups     => ['wheel'],
  }

  $user_ceccanti = 'ceccanti'
  user { $user_ceccanti:
    ensure => present,
    name   => $user_ceccanti,
  } -> ssh_authorized_key { 'ceccanti-key':
    ensure => present,
    user   => $user_ceccanti,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjeLbypc7mmllwLgeVTh85s42ctrt4NhIyoW2oyyMkfGA+7LxDCoui0ttXIl06ATA7vDnuMpuQpPtW6V+4K7Mb65mQOOcy+aooQhLSdxhRNxiYmcJ80SK2lded0HiJUPi8H0iVF5ZiYh3ZYargI38Q182nAgcqPIFEmCgJ+h74d/BpE8LgfoB2fGHznShPjECrrDqruwnzjVljVKVK1PRSyfxoDLKT+ha26IDVTp3BimXOA/Iq53U0EPYP4n8S8EZfdVCdvH0vjZqASD1kBVXuoi50A/ls748bO4dADPXVmahsF+AeJzV6cnah9/6thSLa04v+z0fJ4kD/1g12uP1',
    type   => ssh-rsa,
  }

  $user_vianello = 'vianello'
  user { $user_vianello:
    ensure => present,
    name   => $user_vianello,
  } -> ssh_authorized_key { 'vianello-key':
    ensure => present,
    user   => $user_vianello,
    key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA4VwLVmY3XeMpmK0RvzxZ8gMYQmsxT0qZ+9rFv+41YT8hV/P3YixDAiNJf7/RThGY3d8mGFqFXueAHQU5nTnNPZu3j2/FsL+qk3hPwGkaQcG3+nV2aDh3MfduTdYOobu6mWquwcxlY/uinEd8uXwPOqWOlmU+y+tXvzUf0vPLuT2ks+5eety0+oOqty4/gAanIPYHC9u3PQaK1CkNdot2AEJBh17j4kU/qDMj+wOMDMrInUSFUCQE/0JT76490uB70zmAJc2tewKoKIHwsAzwRJiHraM9XNMNDqugRIIWzJa/nBvs9od0mwyKGQ6u/3hs7ntn5oufngk0skT9M1nECQ==',
    type   => ssh-rsa,
  }

  $user_msoares = 'msoares'
  user { $user_msoares:
    ensure => present,
    name   => $user_msoares,
  } -> ssh_authorized_key { 'msoares-key':
    ensure => present,
    user   => $user_msoares,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDF4yFi/YhkMDzW5Huf5XGPYsA/FeyCiiGim8x5Jjxra+6XwyTzTXJ6yQfR72a0LryxOUVkgsDWa9RMz15V8THRz5tyqc6HtbdK7bBY1DAYXvd4vz4hzE7Zl+dwaAqKaRIgoc588t3GqF9i6xC2PoAAbbMz4fLutoHEen0ziI0dfRtZxtY0erhFU7uqV+9OXjrp9QFg/iEydeAoeDGYnkAZ3lZOUL4al82PHd1QI/S0YpjK5bw0Q8melVrJDZNmzJNe7y8Wjb9cQB7g8R/sBDt6rSmAmleuY9g76jGSP9T/cGDTC5ZZHMe0IQngHTrx3dNp6KRVdGjH1k1ErNTYr8DZ',
    type   => ssh-rsa,
  }
}
