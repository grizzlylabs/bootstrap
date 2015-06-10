# installs public puppet modules from puppet forge
class module_tool::install {
   exec { 'install-puppet-forge-modules-puppetlabs-ntp':
     command => '/usr/bin/puppet module install --target-dir /etc/puppet/environments/production/modules puppetlabs-ntp', 
   }
   exec { 'install-puppet-forge-modules-puppetlabs-xinetd':
     command => '/usr/bin/puppet module install --target-dir /etc/puppet/environments/production/modules puppetlabs-xinetd', 
   }
   exec { 'install-puppet-forge-modules-puppetlabs-tftp':
     command => '/usr/bin/puppet module install --target-dir /etc/puppet/environments/production/modules puppetlabs-tftp', 
   }
   exec { 'install-puppet-forge-modules-puppetlabs-rsync':
     command => '/usr/bin/puppet module install --target-dir /etc/puppet/environments/production/modules puppetlabs-rsync', 
   }
   exec { 'install-puppet-forge-modules-puppetlabs-apache':
     command => '/usr/bin/puppet module install --target-dir /etc/puppet/environments/production/modules puppetlabs-apache', 
   }
}
class module_tool::upgrade {
   exec { 'upgrade-puppet-forge-modules-puppetlabs-ntp':
     command => '/usr/bin/puppet module upgrade puppetlabs-ntp', 
   }
   exec { 'upgrade-puppet-forge-modules-puppetlabs-xinetd':
     command => '/usr/bin/puppet module upgrade puppetlabs-xinetd', 
   }
   exec { 'upgrade-puppet-forge-modules-puppetlabs-tftp':
     command => '/usr/bin/puppet module upgrade puppetlabs-tftp', 
   }
   exec { 'upgrade-puppet-forge-modules-puppetlabs-rsync':
     command => '/usr/bin/puppet module upgrade puppetlabs-rsync', 
   }
   #exec { 'upgrade-puppet-forge-modules-puppetlabs-apache':
   #  command => '/usr/bin/puppet module upgrade puppetlabs-apache', 
   #}
}
