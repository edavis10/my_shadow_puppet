module GeneralDevelopmentPuppet
  def general_development
    [
     'build-essential',
     'exuberant-ctags'
     ].each do |pkg|
      package pkg, :ensure => :latest
    end
  end
end
