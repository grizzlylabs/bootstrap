# Base for cobbler PXE server
class profile::cobbler_server {
   require ::xinetd
   require ::tftp   
   require ::rsync   
   require ::createrepo
}
