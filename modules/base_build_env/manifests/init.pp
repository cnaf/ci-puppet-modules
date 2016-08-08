class base_build_env {
  $pkg_list = [
    'bash',
    'bzip2',
    'coreutils',
    'cpio',
    'createrepo',
    'diffutils',
    'findutils',
    'gawk',
    'gcc',
    'gcc-c++',
    'grep',
    'gzip',
    'info',
    'make',
    'patch',
    'redhat-rpm-config',
    'rpm-build',
    'sed',
    'shadow-utils',
    'tar',
    'unzip',
    'which',
    'xz',
    'redhat-rpm-config']

  $kernel_devel = ['kernel-devel', 'kernel-headers']

  package {
    $pkg_list:
      ensure => present,;

    $kernel_devel:
      ensure => present,;
  }
}
