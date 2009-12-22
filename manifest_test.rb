require 'rubygems'
require 'shadow_puppet'
#require 'facter'

class ManifestTest < ShadowPuppet::Manifest
  recipe :sample

  def sample
    exec :foo, :command => 'echo "foo" > /tmp/foo.txt'

    package :ruby, :ensure => :installed

    file '/tmp/example.txt', {
      :ensure => :present,
      :content => Facter.to_hash.inspect
    }
  end
  
end

m = ManifestTest.new
m.execute

