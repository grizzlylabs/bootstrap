# Base for all Linux Boxen
class profile::base {
   include ::wget
   class { '::ntp':
      servers => hiera("ntp::servers"),
   }
}
