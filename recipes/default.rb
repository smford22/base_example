#
# Cookbook:: base_example
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Setup the Audit cookbook attributes that apply to all platforms
node.default['audit']['reporter'] = 'chef-server-automate'
# Setup the chef-client recipes
include_recipe 'chef-client::default'
include_recipe 'chef-client::delete_validation'

# Include the default audit recipe to install inspec
include_recipe 'audit::default'

# Call the platform specific recipes and attributes to run specific
# configuration you need
case node['platform']
when 'ubuntu', 'redhat', 'centos',
  include_recipe 'base_example::linux'
when 'windows'
  include_recipe 'base_example::windows'
when 'mac_os_x'
  include_recipe 'base_example::osx'
end
