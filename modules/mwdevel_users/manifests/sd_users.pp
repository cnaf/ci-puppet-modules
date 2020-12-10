class mwdevel_users::sd_users {
  include mwdevel_users::commons

  User {
    managehome => true,
    groups     => ['wheel'],
  }

  $user_michelotto = 'dmichelotto'
  user { $user_michelotto:
    ensure => present,
    name   => $user_michelotto,
  } ->
  ssh_authorized_key { 'dmichelotto-key':
    ensure => present,
    user   => $user_michelotto,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmrIgitzjN9NZCFqJiSipzNduBAf5Vw/hgeEaVZbLwZRy3jIhd6mCDUKIcz0OlCzng3UN847u2yo4Gk9xT70i7lQ0PiIyFW/D32T53gDWpNvGSyR6GSlx58k9RnXobEtHgpW3nDX9CNjKz2cw0ooBIpudxCrP4RFcwcfZa0vn5gRDlb/Rm8RorUJXMUQlJKkMct1Neta/iBKGnL/IDj+5GSois6tCxaTVtKfgjfxCigFnITxaSkrgBnKqBB6wkpPI0egbbWlYXcNiH2v7XDJXXsATuGazF3LWsGTiPz+CuY1wSWwM2YQzIMafpyQ4y6qlREMa8v7WV9OUefmS4P0Vj',
    type   => ssh-rsa,
  }

  $user_giacomini = 'giaco'
  user { $user_giacomini:
    ensure => present,
    name   => $user_giacomini,
  } ->
  ssh_authorized_key { 'giaco-key':
    ensure => present,
    user   => $user_giacomini,
    key    => 'AAAAB3NzaC1kc3MAAACBAMnPKRJofIE4AuNRcEV5vauHv/+b8ANhyx7Yk4T3BdDDrVnvQUlACiPWqKTAZIdAsLY1Lx4lhrV+n1kkLoeicNM0UU1PaeKGVPYwQrNNqwvAkW0NqZsY3ZkZdXfjCoeFtAtV6wAmnjOZNjH8i2Eul/obY16Va6pS97SV8yID8P6vAAAAFQDW+E+FaOT5R+ixMrzmMxMm+THT8QAAAIEAk/C7dtkLPwQBiMm/NFaNpQ4XFfdxieFIURihGuLae1h7DV6Wl77TQRR9nYqrARxJVlvI+cfoEYia2/yh+Z4u0pzNXs+2V/JyZ4lMzMjIbAXrjEaoNcWqhpE8yOTI4t1gLX76L/tHNlN4i3nv0bENbhBJ4bfsV60txhW4GpN/yPsAAACABEf4um/w4/me4V5QemJVviLxovUvfbd5+uSwLhnB8iyklpcnJuIthzk+ZYMmDA53u7/+NstirghdW6feGXYL5Ef9uqdmsMYocoUZAxBtMBgfEh5FSPtK8cnWFi5aWmBwNS9JoWi6k57TrJh8RmmCVxK5V+9JBplG1DnWGKu7ZuI=',
    type   => ssh-dss,
  }

  $user_ronchieri = 'ronchieri'
  user { $user_ronchieri:
    ensure => present,
    name   => $user_ronchieri,
  } ->
  ssh_authorized_key { 'ronchieri-key':
    ensure => present,
    user   => $user_ronchieri,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4rkZbaivbN1f/X3JW75ASh4xd4ZuUy3Q8FCQlqRYc8g/CTSCCqoFTAOVUHWsdV/HmnGVf0YbweZNGgFXEEE7C7TF2gxfvcRFouEEcUnV7woyp6Ik/AWRqbXDO7jgqJjDDea8UysPe43cPkQHNbJY5Uw+qKWKQwrhb0nGcC8BLBdDrYh4ZTnpDJCx5qJGOv2nTd9fK45cqrDJyYUltqu6u2pGryh5nSDVgXtpdYe6DkUaQZAeYW9JE5Oo0FAwWaybjDACNsHv6POoKloKqVKn4IFZVxl0U2ogGXA4GTZ/DZC6hTCex7lLZh7rX6Tkti5ySOJkkdLEo+cH6ZdvpZZiF',
    type   => ssh-rsa,
  }

  $user_soares = 'msoares'
  user { $user_soares:
    ensure => present,
    name   => $user_soares,
  } ->
  ssh_authorized_key { 'soares-key':
    ensure => present,
    user   => $user_soares,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDF4yFi/YhkMDzW5Huf5XGPYsA/FeyCiiGim8x5Jjxra+6XwyTzTXJ6yQfR72a0LryxOUVkgsDWa9RMz15V8THRz5tyqc6HtbdK7bBY1DAYXvd4vz4hzE7Zl+dwaAqKaRIgoc588t3GqF9i6xC2PoAAbbMz4fLutoHEen0ziI0dfRtZxtY0erhFU7uqV+9OXjrp9QFg/iEydeAoeDGYnkAZ3lZOUL4al82PHd1QI/S0YpjK5bw0Q8melVrJDZNmzJNe7y8Wjb9cQB7g8R/sBDt6rSmAmleuY9g76jGSP9T/cGDTC5ZZHMe0IQngHTrx3dNp6KRVdGjH1k1ErNTYr8DZ',
    type   => ssh-rsa,
  }

  $user_fagostini = 'fagostini'
  user { $user_fagostini:
    ensure => present,
    name   => $user_fagostini,
  } ->
  ssh_authorized_key { 'fagostini-key':
    ensure => present,
    user   => $user_fagostini,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD0SLu//+u5nKdA8uKQXCrCAkR4iHMqsn0oROSR88PEWGlfzsevyFenMDMaZUY3yC9FQksJPrwKr0CddPo5ng3W05qWbrv0Uztxieq7AineMGR7EyPdD8nZU1GXkaqmH5t/h+KCpJhU2Eq5RTQnp/f0S+HW2piANpK7OAf2NwsYg/LdNySlqaqt6grbjzxTHPviMTykOlZisu7H+J9xEmEJ3V3E5o5QSuSrJzRNFCOkdZuXYzsmKm+hKhCH3U5yBmk0bUhalva7yl5lA/Q9AvhioM/U6WG/rxC21C+IqkrakEDb/krWKSVG6LqzLKO/93nkMLNZ3ywn7401xuLbgo2B',
    type   => ssh-rsa,
  }
}
