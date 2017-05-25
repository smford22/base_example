#
# Cookbook:: base_example
# Recipe:: linux
#
# Copyright:: 2017, The Authors, All Rights Reserved.
node.default['audit']['profiles'] = [
  {
    'name' => 'linux-patch-baseline',
    'url' => 'https://github.com/dev-sec/linux-patch-baseline'
  },
  {
    'name' => 'linux-baseline'
    'url' => 'https://github.com/dev-sec/linux-baseline'
  }
]
