source 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_VERSION') ? "#{ENV['PUPPET_VERSION']}" : ['>= 4.8.1']

group :development do
  gem 'facter', '>= 2.4.6'
  gem 'puppet-lint', '>= 2.1.0', :require => false
  gem 'puppet', puppetversion
  gem 'puppetlabs_spec_helper', '>= 1.2.2'
  gem 'rspec-puppet', '~> 2.6'
end
