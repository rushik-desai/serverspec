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

# check if java 1.8.0 installed
describe package('java-1.8.0-openjdk') do
  it { should be_installed }
end

# check for aha-portal directory
describe file('/opt/aha-portal') do
  it { should be_directory }
end

# check for aha directory
describe file('/var/log/aha') do
  it { should be_directory }
end

# check for aha-pmp-portal.war file
describe file('/opt/aha-portal/aha-pmp-portal.war') do
  it { should exist }
end

#check for aha-portal user
describe user('aha-portal') do
  it { should exist }
end

# check for aha-portal-httpd.conf
describe file('/etc/httpd/conf.d/aha-portal-httpd.conf') do
  it { should exist }
end

# check for aha-portal service file
describe file('/etc/init.d/aha-portal') do
  it { should exist }
end

# check for awslogs package
describe package('awslogs') do
  it { should be_installed }
end

# check for awslogs.conf
describe file('/etc/awslogs/awslogs.conf') do
  it { should exist }
end

# check if awslogs service is enabled and running
describe service('awslogs') do
  it { should be_running }
  it { should be_enabled }
end

# check for httpd service running and enabled
describe service('httpd') do
  it { should be_enabled }
end

describe command('sudo service httpd status') do
  its(:exit_status) { should eq 0}
end

# check if aha-portal service is enabled and running
describe service('aha-portal') do
  it { should be_running }
  it { should be_enabled }
end
