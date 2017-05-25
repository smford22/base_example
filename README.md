# base_example

The purpose of this cookbook is to provide an example of a base wrapper cookbook
to manage the base configuration of any node in your environment based off of the
platform (Linux, Windows, MacOS X). The code shown here just uses the `chef-client`
cookbook and the `audit` cookbook, but could be easily expanded with things like
`ntp`, `users` or hardening

## Requirements

### Platforms

- Mac OS X
- RHEL 7
- Ubuntu 16.04+
- Windows 2012 R2+

### Chef

- Chef 12.1+

### Dependent Cookbooks
- chef-client
- audit

## Attributes
- `node['audit']['reporter'] = 'chef-server-automate'`
- `node['audit']['profiles'] =`

## Recipes

This section describes the recipes in the cookbook and how to use them in your environment.

## default
Sets the any global attributes to be applied to all platforms, calls the
`chef-client::default`, `chef-client::delete_validation`, and the `audit::default`
recipes, then uses a `case` statement to call `platform` specific recipes

## linux
Sets linux specific inspec profiles and configuration

## osx
Sets osx specific inspec profiles and configuration

## windows
Sets windows specific inspec profiles and configuration

## License & Authors

**Author:** Scott Ford ([sford@chef.io](mailto:sford@chef.io))


```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
