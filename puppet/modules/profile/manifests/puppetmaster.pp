# Base for Puppet Master        
class profile::puppetmaster {
   require ::module_tool::install
   require ::module_tool::upgrade
}
