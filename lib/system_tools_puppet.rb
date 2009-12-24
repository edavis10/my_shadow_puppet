module SystemToolsPuppet
  def system_tools
    [
     'htop',
     'less',
     'synergy',
     'screen',
     'bzip2',
     'markdown',
     'sshfs'
    ].each do |pkg|
      package pkg, :ensure => :latest
    end
  end
end
