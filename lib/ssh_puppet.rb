module SshPuppet
  def ssh_client
    package 'openssh-client', :ensure => :latest
  end

  def ssh_server
    package 'openssh-server', :ensure => :latest

    service "ssh", :require => package('openssh-server'), :restart => '/etc/init.d/ssh restart', :ensure => :running
  end

  def ssh_keychain
    package 'keychain', :ensure => :latest
  end
end
