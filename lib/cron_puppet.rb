# Taken from Moonshine
module CronPuppet
  def cron_packages
    service "cron", :require => package("cron"), :ensure => :running
    package "cron", :ensure => :installed
  end
end
