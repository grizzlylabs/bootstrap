node 'YourFQDNhostname' {

   #include ROLE::deployment
   include PROFILE::base
   #include tftp    
   #include xinetd    

}
