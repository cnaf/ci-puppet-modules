class centos_utils::fix_stap_groups {
  group { 'stapusr': gid => 6156 }

  group { 'stapsys': gid => 6157 }

  group { 'stapdev': gid => 6158 }
}
