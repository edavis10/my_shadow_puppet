require 'rubygems'
require 'shadow_puppet'

Dir['lib/**.rb'].each {|lib| require lib}

class DesktopManifest < ShadowPuppet::Manifest
  include CronPuppet
  recipe :cron_packages

  include NtpPuppet
  recipe :ntp

  include EmacsPuppet
  recipe :emacs

  include SystemToolsPuppet
  recipe :system_tools

  include SshPuppet
  recipe :ssh_client
  recipe :ssh_server

  include X11Puppet
  recipe :xbindkeys
  recipe :wmii

  include EmailClientPuppet
  recipe :claws_mail
  
  # Development
  include GeneralDevelopmentPuppet
  recipe :general_development

  include ScmPuppet
  recipe :git
  recipe :svn
  recipe :mercurial
  recipe :bzr
  recipe :cvs
  recipe :darcs
  
  include RubyPuppet
  recipe :ruby
  
  include SqlitePuppet
  recipe :sqlite
  recipe :sqlite_ruby
end

m = DesktopManifest.new
m.execute
