source 'https://rubygems.org'

if ENV.key?('PUPPET_VERSION')
  puppetversion = "#{ENV['PUPPET_VERSION']}"
 else
   puppetversion = "~> 4.0.0"
end

gem 'rake'
gem 'puppet-lint'
gem "rspec-puppet", :git => 'https://github.com/rodjek/rspec-puppet.git'
gem 'rspec-puppet-utils'
gem 'puppet', puppetversion
gem 'puppetlabs_spec_helper'
