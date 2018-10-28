# The browsers needed for day to day work + eventual others that might be needed
dep 'Browsers' do
  requires 'GoogleChrome',
           'Firefox'
end

dep 'GoogleChrome' do
  requires 'google-chrome.cask'
end

dep 'Firefox' do
  requires 'firefox.cask'
end

dep 'Brave' do
  requires 'brave.cask'
end

dep 'google-chrome.cask'
dep 'firefox.cask'
dep 'brave.cask'
