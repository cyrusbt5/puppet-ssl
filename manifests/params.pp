# == Class: ssl::params
# Sets up some params based on OSFamily for the remainder
# of the module to make use of
class ssl::params {

  $package = 'openssl'

  case $::osfamily {
    'Debian': {
      $crt_dir = '/etc/ssl/certs'
      $key_dir = '/etc/ssl/private'
    }
    'Archlinux': {
      $crt_dir = '/etc/ssl/certs'
      $key_dir = '/etc/ssl/private'
    }
    default: {
      # default to RedHat-style defaults
      $crt_dir = '/etc/pki/tls/certs'
      $key_dir = '/etc/pki/tls/private'
    }
  }
}

