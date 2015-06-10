# Base for apache web server  
class profile::apache_server {
   class { 'apache': } 
   include 'apache::mod::ssl'
   include 'apache::mod::wsgi'
}
