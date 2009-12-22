module SystemToolsPuppet
  def system_tools
    [
     'htop',
     'less',
     'synergy'
    ].each do |pkg|
      package pkg, :ensure => :latest
    end
  end
end
