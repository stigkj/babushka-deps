dep 'Printer drivers' do
  requires 'Canon PIXMA iP7250.installer'
end

dep 'Canon PIXMA iP7250.installer' do
  source 'http://gdlp01.c-wss.com/gds/8/0100005558/06/mcpd-mac-ip7200-16_20_0_0-ea21_3.dmg'
  met? {
    [
      '/Library/Printers/PPDs/Contents/Resources/CanonIJiP7200series.ppd.gz',
      '/Library/Printers/Canon/BJPrinter/Resources/Database/CIJiP7200series.db',
      '/Library/Printers/Canon/BJPrinter/Resources/ICCProfiles/iP7200series.canonicc'
    ].all? {|f|
      f.p.exists?
    }
  }
end
