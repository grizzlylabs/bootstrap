## Deployment Server Role
# Class: role::deployment 
class role::deployment {
   include profile::base
   include profile::puppetmaster   
   include profile::cobbler_server
}
