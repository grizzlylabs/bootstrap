# Puppet module to manage ntp
# Grizzlylabs 2015

class ntp {
   # Use the name of the NTP package for an operating system
   $NTP_name = $::operatingsystem ? {
      Fedora  => "ntpd",
      RedHat  => "ntpd",
      CenOS   => "ntpd"
      default => "ntpd",
   }
