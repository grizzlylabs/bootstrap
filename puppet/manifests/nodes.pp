node 'deploy01.grizzlylabs.org' {
   class { '::ntp' :
   servers => ['0.pool.ntp.org', '1.pool.ntp.org' ] ,
   }
}
