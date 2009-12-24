module X11Puppet
  def xbindkeys
    package "xbindkeys", :ensure => :latest
    package "xbindkeys-config", :ensure => :latest
  end

  def wmii
    package "wmii", :ensure => :installed
    package "wmii-doc", :ensure => :installed
  end
end
