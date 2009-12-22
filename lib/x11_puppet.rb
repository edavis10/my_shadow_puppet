module X11Puppet
  def wmii
    package "wmii", :ensure => :installed
    package "wmii-doc", :ensure => :installed
  end
end
