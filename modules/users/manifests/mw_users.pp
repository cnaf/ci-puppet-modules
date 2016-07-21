class users::mw_users {
  include users::commons

  User {
    managehome => true,
    groups     => ['wheel'],
  }

  user { 'caberletti':
    ensure => 'present',
    name   => 'caberletti',
  } ->
  ssh_authorized_key { 'caberletti-key':
    ensure => 'present',
    user   => 'caberletti',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQtaZu+ACE106jAOQATBKa3imKb4f8wFdIaZbKDmLu8QpLHhv32U6Ujx0Am0G4ebfHzZE8QMMrSPQeXmt3SrSYa5MbKIXUqwim943LKXwM6kVBYUxaO8jRiXybV/g/LBZh+S0ieSpXS671SBAtz+b73wVZogMZ/Ht4AIaoppC8PKr6mkcLeIqxAsYDS9yM9UAXxscol7z5UyHOALShwv/jcGzJcPjQ3fbBXacNEr+7jwHInSq8HuI5rWIb9AWhQXVVFgJci2+7/M479cdfO7KA5sdDr3ukFSYZMsf8KetEB7mKKwu9KP2QMZ/v5OldHlHH5u+RlkQb5QiGz+FlyK1H',
    type   => 'ssh-rsa',
  }

  user { 'ceccanti':
    ensure => 'present',
    name   => 'ceccanti',
  } ->
  ssh_authorized_key { 'ceccanti-key':
    ensure => 'present',
    user   => 'ceccanti',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjeLbypc7mmllwLgeVTh85s42ctrt4NhIyoW2oyyMkfGA+7LxDCoui0ttXIl06ATA7vDnuMpuQpPtW6V+4K7Mb65mQOOcy+aooQhLSdxhRNxiYmcJ80SK2lded0HiJUPi8H0iVF5ZiYh3ZYargI38Q182nAgcqPIFEmCgJ+h74d/BpE8LgfoB2fGHznShPjECrrDqruwnzjVljVKVK1PRSyfxoDLKT+ha26IDVTp3BimXOA/Iq53U0EPYP4n8S8EZfdVCdvH0vjZqASD1kBVXuoi50A/ls748bO4dADPXVmahsF+AeJzV6cnah9/6thSLa04v+z0fJ4kD/1g12uP1',
    type   => 'ssh-rsa',
  }

  user { 'vianello':
    ensure => 'present',
    name   => 'vianello',
  } ->
  ssh_authorized_key { 'vianello-key':
    ensure => 'present',
    user   => 'vianello',
    key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA4VwLVmY3XeMpmK0RvzxZ8gMYQmsxT0qZ+9rFv+41YT8hV/P3YixDAiNJf7/RThGY3d8mGFqFXueAHQU5nTnNPZu3j2/FsL+qk3hPwGkaQcG3+nV2aDh3MfduTdYOobu6mWquwcxlY/uinEd8uXwPOqWOlmU+y+tXvzUf0vPLuT2ks+5eety0+oOqty4/gAanIPYHC9u3PQaK1CkNdot2AEJBh17j4kU/qDMj+wOMDMrInUSFUCQE/0JT76490uB70zmAJc2tewKoKIHwsAzwRJiHraM9XNMNDqugRIIWzJa/nBvs9od0mwyKGQ6u/3hs7ntn5oufngk0skT9M1nECQ==',
    type   => 'ssh-rsa',
  }
}
