class mwdevel_voms_build_deps {
  include mwdevel_base_build_env
  require mwdevel_yum_utils
  require mwdevel_voms_repos
  require mwdevel_oracle_repo

  $packages = [
    'voms',
    'voms-admin-server',
    'voms-admin-client',
    'voms-oracle-plugin',
    'voms-mysql-plugin',
    'voms-clients3',
    'voms-api-java3']

  mwdevel_yum_utils::builddep { $packages: }
}

