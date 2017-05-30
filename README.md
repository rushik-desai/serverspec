# serverspec
RSpec tests for your servers configured  by Chef, Puppet, Ansible, Itamae or anything else.

# Prerequisite

- Ruby, Bundler must be installed on machine

# How to use 

- Change sudo_password, user, host_name (IP) and password in spec_helper.rb
- Change following contents from spec_helper.rb

    "user" -> "set SPEC_USER variable in environment"
    set "SPEC_HOST_AUTHENTICATION" as "key" or "password" in environment variable
    
    "password" -> "set SPEC_PASSWORD variable in environment" 
    
    "host_name" -> "SPEC_HOST_NAME variable in environment"
    
- Add test cases in sample_spec.rb 

- execute following command

  $ bash Run.sh

# References

https://debian-administration.org/article/703/A_brief_introduction_to_server-testing_with_serverspec

http://serverspec.org/resource_types.html

http://annaken.github.io/automated-testing-serverspec-output-logstash-results-kibana

https://vincent.bernat.im/en/blog/2014-serverspec-test-infrastructure.html

https://github.com/vincentbernat/serverspec-example

https://github.com/stelligent/serverspec-aws-resources
