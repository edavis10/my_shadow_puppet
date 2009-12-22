module EmailClientPuppet
  def claws_mail
    package "claws-mail", :ensure => :latest
    package "claws-mail-extra-plugins", :ensure => :latest
  end
end
