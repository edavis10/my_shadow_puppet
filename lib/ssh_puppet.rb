module SshPuppet
  def ssh_client
    package 'openssh-client', :ensure => :latest
  end

  def ssh_server
    package 'openssh-server', :ensure => :latest
  end
end
