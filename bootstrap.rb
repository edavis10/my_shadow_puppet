# Bootstrap a Rubygem and Puppet environment
#
# Based on Moonshine's cap task

def install_deps
  system([
          "sudo aptitude update",
          "sudo aptitude install -y build-essential zlib1g-dev libssl-dev libreadline5-dev wget rdoc ri"
         ].join(" && "))
end

def install_rubygems
  system([
          'cd /tmp',
          'rm -rf rubygems-1.3.5* || true',
          'wget -q http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz',
          'tar xfz rubygems-1.3.5.tgz',
          'cd /tmp/rubygems-1.3.5',
          'sudo ruby setup.rb',
          'sudo ln -s /usr/bin/gem1.8 /usr/bin/gem || true',
          'sudo gem update --system'
         ].join(" && "))
end

def install_shadow_puppet
  system([
          "sudo gem install rake",
          "sudo gem install puppet",
          "sudo gem install shadow_puppet"
          ].join(" && "))
end

install_deps &&
install_rubygems && 
install_shadow_puppet
