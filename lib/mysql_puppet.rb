module MysqlPuppet
  def mysql_client
    package 'libmysqlclient16', :ensure => :latest
    package 'libmysqlclient16-dev', :ensure => :latest
    package 'mysql-client-5.0', :ensure => :latest
    package 'mysql', :provider => :gem, :ensure => :latest
  end

  def mysql_server
    package 'mysql-server-5.0', :ensure => :latest
  end
end
