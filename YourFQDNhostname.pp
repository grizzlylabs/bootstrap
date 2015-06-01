node 'YourFQDNhostname' {
   class { '::ntp' :
   servers => ['0.pool.ntp.org', '1.pool.ntp.org' ] ,
   }
   class { '::clobber' :
   }
   class { '::global' :
   }
}
