class mwdevel_centos_utils::fix_stap_groups {
  group {
    'stapusr':
      gid => 6156,;

    'stapsys':
      gid => 6157,;

    'stapdev':
      gid => 6158,;
  }
}
