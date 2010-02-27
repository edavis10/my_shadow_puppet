# My Shadow Puppet

This is a configuration that I use with [shadow_puppet](http://reductivelabs.com/trac/puppet/wiki/ShadowPuppet) to build and configure my desktops.

## Requirements

* Ruby
* Rubygems
* shadow_puppet (see below)

## Usage

### Clean system (Debian)

If you are installing to a clean system, a bootstrap script is provided to install any needed system dependencies, rubygems, and shadow_puppet.  Just run `ruby bootstrap.rb` (might need sudo).

### Set or upgrade a system

To run the tasks to setup your system (called manifests), just run @sudo shadow_puppet desktop_manifest.rb@.  You can also make other manifests for specific systems with different configurations (e.g. web_server_manifest.rb, rails_development_workstation.rb).

## Missing items

* Ruby gems
* Desktop config
* unix tools (e.g. screen)
* Passenger
* Google Chrome
* Firefox
* Adobe AIR

