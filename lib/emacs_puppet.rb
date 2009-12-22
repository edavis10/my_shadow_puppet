module EmacsPuppet
  def emacs
    package "emacs-snapshot", :ensure => :installed
  end
end
