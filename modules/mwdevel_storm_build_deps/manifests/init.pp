class mwdevel_storm_build_deps {
  include mwdevel_base_build_env
  require mwdevel_yum_utils
  require mwdevel_storm_repos
  require mwdevel_gpfs_repo

  #  StoRM XML rpc build requires svn
  package { 'subversion': ensure => latest, }

  #  And readline devel
  package { 'readline-devel': ensure => latest, }

  $packages = [
    'storm-backend-server',
    'storm-dynamic-info-provider',
    'storm-frontend-server',
    'storm-globus-gridftp-server',
    'storm-gridhttps-server',
    'storm-native-libs',
    'storm-srm-client',
    'yaim-storm']

  mwdevel_yum_utils::builddep { $packages: }
}

