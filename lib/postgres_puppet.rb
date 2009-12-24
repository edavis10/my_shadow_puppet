module PostgresPuppet
  def postgres_client
    package 'postgresql-client-8.4', :ensure => :latest
    package 'postgres', :provider => :gem, :ensure => :latest
  end

  def postgres_server
    package 'postgresql-8.4', :ensure => :latest
  end

  def postgres_gui
    package 'pgadmin3', :ensure => :latest
  end
end
