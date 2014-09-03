meta :extension do
  accepts_value_for :source
  accepts_value_for :provides

  template {
    met? {
      "~/Library/Safari/Extensions/#{provides}".p.exists?
    }

    meet {
      Babushka::Resource.extract(source) { |archive|
        shell "open #{archive.path.to_s}"
      }
    }
  }
end

dep "pocket.extension" do
  source "http://getpocket.com/apps/link/pocket-safari/?ep=4&s=WELCOME_PAGE"
  provides "Pocket.safariextz"
end

dep "evernote.extension" do
  source "http://evernote.com/download/get.php?file=SafariExtension"
  provides "Evernote Web Clipper-2.safariextz"
end

dep "adblock.extension" do
  source "http://safariadblock.com/AdBlockForSafari.safariextz"
  provides "AdBlock-2.safariextz"
end