dep 'Xerox WC 7545.installer', :for => :osx do
  source 'http://www.support.xerox.com/support/workcentre-7545-7556/file-redirect/enus.html?operatingSystem=macosx1010&fileLanguage=en_GB&&associatedProduct=XRIP_WC7525_base&contentId=126507'
  met? {
    [
      '/Library/Printers/PPDs/Contents/Resources/Xerox WC 7545.gz',
      '/Library/Printers/Xerox/PDEs/XeroxFeatures.plugin',
      '/Library/Printers/Xerox/Profiles/Xerox_WorkCentre_75xx_Series.icm'
    ].all? {|f|
      f.p.exists?
    }
  }
end
