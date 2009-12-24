module RubyPuppet
  # This "should" be installed by hand in order to even run this, but
  # we'd like to keep it up to date
  def ruby
    package "ruby1.8", :ensure => :latest
    package "ruby1.8-dev", :ensure => :latest
    package "rdoc", :ensure => :latest
    package "ri", :ensure => :latest

    package "libopenssl-ruby", :ensure => :latest
    package "libxml-ruby", :ensure => :latest
  end

  def core_rubygems
    {
      'rails' => [:latest,'2.3.5','2.3.4','2.2.3','2.2.2','2.1.2','2.0.2'],
      'BlueCloth' => [:latest],
      'cheat' => [:latest],
      'capistrano' => [:latest],
      'chronic' => [:latest],
      'coderay' => [:latest],
      'cucumber' => [:latest, '0.1.12'],
      'inaction_mailer' => [:latest],
      'github' => [:latest],
      'erubis' => [:latest],
      'fakeweb' => [:latest],
      'flay' => [:latest],
      'flog' => [:latest],
      'gemcutter' => [:latest],
      'git' => [:latest],
      'gruff' => [:latest],
      'haml' => [:latest],
      'heckle' => [:latest],
      'heroku' => [:latest],
      'hoe' => [:latest],
      'hpricot' => [:latest],
      'httparty' => [:latest],
      'jeweler' => [:latest],
      'inherited_resurces' => [:latest],
      'metric_fu' => [:latest],
      'json' => [:latest],
      'formtastic' => [:latest],
      'liquid' => [:latest],
      'mailtrap' => [:latest],
      'maruku' => [:latest],
      'mechanize' => [:latest],
      'memcache-client' => [:latest],
      'memcached' => [:latest],
      'will_paginate' => [:latest],
      'money' => [:latest],
      'mongrel' => [:latest],
      'mongrel_cluster' => [:latest],
      'newrelic_rpm' => [:latest],
      'nofxx-object_daddy' => [:latest],
      'nokogiri' => [:latest],
      'machinist' => [:latest],
      'oniguruma' => [:latest],
      'query_trace' => [:latest],
      'rack-bug' => [:latest],
      'rack-test' => [:latest],
      'random_data' => [:latest],
      'rcov' => [:latest],
      'rdiscount' => [:latest],
      'RedCloth' => [:latest, '3.0.4', '3.0.0'],
      'redmine_plugin_support' => [:latest],
      'reek' => [:latest],
      'request-log-analyzer' => [:latest],
      'rest-client' => [:latest],
      'stringex' => [:latest],
      'rspec' => [:latest, '1.2.6'],
      'rspec-rails' => [:latest, '1.2.6'],
      'ruby-aws' => [:latest],
      'ruby-debug' => [:latest],
      'ruby-openid' => [:latest],
      'ruby-prof' => [:latest],
      'ruby2ruby' => [:latest],
      'rubyforge' => [:latest],
      'RubyInline' => [:latest],
      'aasm' => [:latest],
      'rubytree' => [:latest],
      'rvm' => [:latest],
      's3sync' => [:latest],
      'scout' => [:latest],
      'sinatra' => [:latest],
      'sinatra-ditties' => [:latest],
      'snippits' => [:latest],
      'taps' => [:latest],
      'test_benchmark' => [:latest],
      'thin' => [:latest],
      'thor' => [:latest],
      'factory_girl' => [:latest],
      'shoulda' => [:latest],
      'tzinfo' => [:latest],
      'utility_belt' => [:latest],
      'vpim' => [:latest],
      'webgen' => [:latest],
      'webrat' => [:latest],
      'ZenTest' => [:latest],
      'authlogic' => [:latest],
      'autotest-rails' => [:latest],
      'searchlogic' => [:latest]
    }.each do |gem_name, versions|
      versions.each do |version|

        package gem_name, :provider => :gem, :ensure => version
        
      end
    end
  end
end
