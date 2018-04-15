require 'spec_helper'

describe 'ssl::package', :type => :class do

  context 'with $package left unset' do
    it { is_expected.to contain_package('openssl').
      with_ensure('present') }
  end

  context 'with $package = [ "openssl", "libssl" ]' do
    let(:params) {{ 'package' => [ 'openssl','libssl' ] }}

    it { is_expected.to contain_package('openssl').
      with_ensure('present') }
    it { is_expected.to contain_package('libssl').
      with_ensure('present') }
  end

end
