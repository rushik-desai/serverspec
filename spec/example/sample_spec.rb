require 'spec_helper'

# check for zip package
describe package('zip') do
  it { should be_installed }
end

# check for httpd package
describe package('httpd') do
  it { should be_installed }
end

# check for 8080 port listening
describe port('8080') do
  it { should be_listening }
end

# check for awslogs package
describe package('awslogs') do
  it { should be_installed }
end

# check for httpd service running and enabled
describe service('httpd') do
  it { should be_enabled }
end

describe command('sudo service httpd status') do
  its(:exit_status) { should eq 0}
end
