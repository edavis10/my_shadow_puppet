module OfficePuppet
  def general_office
    [
     'openoffice.org',
     'acroread',
     'cheese',
     'cups-pdf',
     'gnucash',
     'inkscape',
     'empathy',
     'telepathy-salut',
     'telepathy-haze',
     'telepathy-idle',
     'telepathy-butterfly',
     'telepathy-gabble',
     'scrot'
#     'skype'
    ].each do |pkg|
      package pkg, :ensure => :latest
    end
  end
end
