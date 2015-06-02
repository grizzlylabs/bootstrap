node 'YourFQDNhostname' {

   include cobbler 
   include COMMON

   class { '::ntp' :
   servers => ['0.pool.ntp.org', '1.pool.ntp.org' ] ,
   }
#   class { '::wget' :
#   }
#   class { '::clobber' :
#   }
#   class { '::global' :
#   }
}
