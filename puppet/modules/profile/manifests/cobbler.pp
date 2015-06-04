# Base for cobbler PXE server
class profile::cobbler {
   require ::xinetd
   require ::tftp   
   require ::rsync   
}
