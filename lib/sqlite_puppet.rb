module SqlitePuppet
  def sqlite
    package "sqlite3", :ensure => :installed
    package "sqlitebrowser", :ensure => :installed
  end

  def sqlite_ruby
    package "libsqlite3-dev", :ensure => :installed
    gem "sqlite3-ruby", :ensure => :installed
  end
end
