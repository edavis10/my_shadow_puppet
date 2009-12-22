module RubyPuppet
  # This "should" be installed by hand in order to even run this, but
  # we'd like to keep it up to date
  def ruby
    package "ruby1.8", :ensure => :latest
    package "ruby1.8-dev", :ensure => :latest
    package "rdoc", :ensure => :latest
    package "ri", :ensure => :latest

    package "libopenssl-ruby", :ensure => :latest
    package "libxml-ruby", :ensure => :latest
  end
end
