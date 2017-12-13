require 'spec_helper'

# check for httpd package
describe package('httpd') do
  it { should be_installed }
end

# check for httpd service running and enabled
describe service('httpd') do
  it { should be_enabled }
end

describe service('httpd') do
  it { should be_running }
end
