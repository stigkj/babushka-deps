# TODO

#Start the status bar Path at $HOME (instead of Hard drive)
#$ defaults write /Library/Preferences/com.apple.finder PathBarRootAtHome -bool

#Enable Remote Disc (1)
#$ defaults write com.apple.NetworkBrowser EnableODiskBrowsing -boolean
#Enable Remote Disc (2)
#$ defaults write com.apple.NetworkBrowser ODSSupported -boolean

#Enable movie preview thumbnails:
#$ defaults write com.apple.QuickLookDaemon QLDisableQTThumbnails -boolean-neg

#Minimum size for playable previews:
#$ defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -integer

#Auto stop previews when scrolling:
#$ defaults write com.apple.finder AutoStopWhenScrollingOffBounds -boolean

#Auto stop previews when selection changes:
#$ defaults write com.apple.finder AutoStopWhenSelectionChanges -boolean

#Enable slow motion with shift key on QuickLook:
#$ defaults write com.apple.finder QLEnableSlowMotion -boolean

#When performing a search, search the current folder by default (the default 'This Mac' is "SCev")
#$ defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#Show version column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.version.visible -boolean

#Show label column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.label.visible -boolean

#Show comments column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.comments.visible -boolean

#Show size column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.size.visible -boolean

#Show stripes in list views:
#$ defaults write com.apple.finder FXListViewStripes -boolean

#Allow quitting Finder, like any other app. doing so will also hide desktop icons.
#This is only really useful with a 3rd party file manager:
#$ defaults write com.apple.finder QuitMenuItem -bool YES; killall Finder

#Scale images by default when printing:
#$ defaults write write com.apple.Preview PVImagePrintingScaleMode -boolean

#Preview Auto-rotate by default when printing:
#$ defaults write write com.apple.Preview PVImagePrintingAutoRotate -boolean

#Automatically show Closed Captions (CC) when opening a Movie:
#$ defaults -currentHost write com.apple.QuickTimePlayerX.plist MGEnableCCAndSubtitlesOnOpen -boolean

#Enable debug menu:
#$ defaults write com.apple.Safari IncludeDebugMenu -boolean

