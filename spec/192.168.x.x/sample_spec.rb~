require 'spec_helper'

describe package('mysql-client-5.5') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_running }
end

describe package('maven3') do
  it { should be_installed }
end

describe service('cron') do
  it { should be_running }
end

describe file('/etc/passwd') do
  it { should be_file }
end
