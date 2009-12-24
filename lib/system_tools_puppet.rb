module SystemToolsPuppet
  def system_tools
    [
     'htop',
     'less',
     'synergy',
     'screen'
    ].each do |pkg|
      package pkg, :ensure => :latest
    end
  end
end
