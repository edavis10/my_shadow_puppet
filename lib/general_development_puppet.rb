module GeneralDevelopmentPuppet
  def general_development
    package "build-essential", :ensure => :latest
  end
end
