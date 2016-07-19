class storm_build_deps {
  include base_build_env
  require yum_utils
  require storm_repos
  require gpfs_repo

  /* StoRM XML rpc build requires svn */
  package { 'subversion': ensure => latest }

  /* And readline devel */
  package { 'readline-devel': ensure => latest }

  $packages = [
    'storm-backend-server',
    'storm-dynamic-info-provider',
    'storm-frontend-server',
    'storm-globus-gridftp-server',
    'storm-gridhttps-server',
    'storm-native-libs',
    'storm-srm-client',
    'yaim-storm']

  yum_utils::builddep { $packages: }
}

