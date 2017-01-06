# serverspec
RSpec tests for your servers configured  by Chef, Puppet, Ansible, Itamae or anything else.

# Prerequisite

- Ruby, Bundler must be installed on machine

# How to use 

- Change sudo_password, user, host_name (IP) and password in spec_helper.rb
- Change following contents from spec_helper.rb
    "user" -> "user of remote host"
    
    "password" -> "password of remote host" 
    
    "host_name" -> "IP of remote host"
    
- execute following command

  $ bundle exec rake spec
