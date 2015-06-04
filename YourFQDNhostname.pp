node 'YourFQDNhostname' {

   #class { '::wget': }
   #class { '::PROFILE::base': }
   include role::deployment
   #include profile::base
   #include '::wget'
   #include tftp    
   #include xinetd    

}
