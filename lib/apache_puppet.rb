module ApachePuppet
  def apache
    package 'apache2', :ensure => :installed

    service "apache", :require => package('apache2'), :restart => '/etc/init.d/apache restart', :ensure => :running

  end
 
end
