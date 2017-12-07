require 'spec_helper'

# check for httpd package
describe package('httpd') do
  it { should be_installed }
end

# check for 8080 port listening
describe port('8080') do
  it { should be_listening }
end

describe command('sudo service httpd status') do
  its(:exit_status) { should eq 0}
end
