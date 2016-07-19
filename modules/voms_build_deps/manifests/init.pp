class voms_build_deps {
  include base_build_env
  require yum_utils
  require voms_repos
  require oracle_repo

  $packages = [
    'voms',
    'voms-admin-server',
    'voms-admin-client',
    'voms-oracle-plugin',
    'voms-mysql-plugin',
    'voms-clients3',
    'voms-api-java3']

  yum_utils::builddep { $packages: }
}

