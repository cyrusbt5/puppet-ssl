# == Class: ssl::params
# Sets up some params based on OSFamily for the remainder
# of the module to make use of
class ssl::params {

  $default_bits = 2048
  $default_md   = 'sha256'
  $package      = 'openssl'

  case $::facts['osfamily'] {
    /^(Debian|Ubuntu|ArchLinux)$/: {
      $crt_dir = '/etc/ssl/certs'
      $key_dir = '/etc/ssl/private'
    }
    default: {
      # Default to RedHat|CentOS
      $crt_dir = '/etc/pki/tls/certs'
      $key_dir = '/etc/pki/tls/private'
    }
  }
}
