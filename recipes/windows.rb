#
# Cookbook:: base_example
# Recipe:: windows
#
# Copyright:: 2017, The Authors, All Rights Reserved.
node.default['audit']['profiles'] = [
  {
    'name' => 'windows-patch-baseline',
    'url' => 'https://github.com/dev-sec/windows-patch-baseline'
  },
  {
    'name' => 'linux-baseline'
    'url' => 'https://github.com/dev-sec/windows-baseline'
  }
]
