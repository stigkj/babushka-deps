dep 'GoogleChrome' do
  requires {
    on :osx, 'google-chrome.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'google-chrome.cask', :for => :osx
