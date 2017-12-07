require 'spec_helper'

# check for httpd package
describe package('httpd') do
  it { should be_installed }
end
