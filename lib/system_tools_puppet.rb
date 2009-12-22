module SystemToolsPuppet
  def system_tools
    [
     'htop',
     'less',
    ].each do |pkg|
      package pkg, :ensure => :installed
    end
  end
end
