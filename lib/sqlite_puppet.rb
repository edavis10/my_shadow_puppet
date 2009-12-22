module SqlitePuppet
  def sqlite
    package "sqlite3", :ensure => :installed
    package "sqlitebrowser", :ensure => :installed
  end

  def sqlite_ruby
    package "libsqlite3-dev", :ensure => :installed
    package "sqlite3-ruby", :provider => :gem, :ensure => :installed
  end
end
