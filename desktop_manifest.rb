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

  include X11Puppet
  recipe :wmii
end

m = DesktopManifest.new
m.execute