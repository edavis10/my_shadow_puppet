module ScmPuppet
  def git
    package "git-core", :ensure => :latest
    package "git-gui", :ensure => :latest
    package "git-svn", :ensure => :latest
    package "gitk", :ensure => :latest
    package "qgit", :ensure => :latest
  end

  def svn
    package "subversion", :ensure => :latest
    package "subversion-tools", :ensure => :latest
  end

  def mercurial
    package "mercurial", :ensure => :latest
  end

  def bzr
    package "bzr", :ensure => :latest
    package "bzrtools", :ensure => :latest
  end

  def cvs
    package "cvs", :ensure => :latest
  end

  def darcs
    package "darcs", :ensure => :latest
  end
end
