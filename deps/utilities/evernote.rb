dep 'Evernote' do
  requires {
    on :osx, 'evernote.cask', 'evernote.extension'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'evernote.cask', :for => :osx

dep 'evernote.extension' do
  source "http://evernote.com/download/get.php?file=SafariExtension"
  provides "Evernote Web Clipper.safariextz"
end
