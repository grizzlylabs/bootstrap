# Base for all Linux Boxen
class profile::base {
   include ::wget
   include ::ntp
}
