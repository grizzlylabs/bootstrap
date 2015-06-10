# Manage repository tools for a centos cobbler server
class repo_tools {
   package { 'createrepo':
      ensure => installed,
   }
   # Open Issue CentOS 7 doesn't have debmirror
   #package { 'debmirror':
   #   ensure => installed,
   #}
   package { 'fence-agents-all':
      ensure => installed,
   }
}
