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
    
- Add test cases in sample_spec.rb 

- execute following command

  $ bundle exec rake spec

# References

https://debian-administration.org/article/703/A_brief_introduction_to_server-testing_with_serverspec

http://serverspec.org/resource_types.html

http://annaken.github.io/automated-testing-serverspec-output-logstash-results-kibana

https://vincent.bernat.im/en/blog/2014-serverspec-test-infrastructure.html

https://github.com/vincentbernat/serverspec-example

https://github.com/stelligent/serverspec-aws-resources
