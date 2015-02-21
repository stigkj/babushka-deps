## Configuration

* Move 'Setup shell' to utilities?
* When needing to check if something shell related is done correctly, spawn a shell to run the check in
  * Check that the Homebrew version of zsh is installed: by path (which zsh) or version?
* [Set Chrome as default browser](https://github.com/kerma/defaultbrowser/blob/master/build/defaultbrowser)
* [Sort folders first in Finder](http://mygeekdaddy.net/2013/10/24/change-mavericks-finder-app-sort-order)
* [Setup environment variables for GUI apps](http://stackoverflow.com/a/26477515)
* Check if ulimit should be changed from 256 to X
* Enable cups web ui (cupsctl WebInterface=yes)
* Remove not needed login items so for example Chrome is not started at login
* defaults write stuff
  * Nice OS X defaults write site: http://www.defaults-write.com/
  * Change keyboard shortcuts for Alfred and Spotlight
  * Enable "Show location icon in menu bar when System Services request your location"
    - in System Preferences -> Security & Privacy -> Privacy -> Location Services -> System Services Details...
  * Look at these for inspiration:
    * https://github.com/zenangst/OSX-Configuration
    * https://github.com/hjuutilainen/dotfiles/tree/master/bin
    * https://github.com/mathiasbynens/dotfiles
    * https://github.com/ymendel/dotfiles/blob/master/osx/input.defaults
    * https://github.com/thekompanee/sinstallation/blob/master/preferences/mouse.sh
    * https://gist.github.com/brandonb927/3195465


## Utilities

* zsh/prezto stuff
  * Prompts
    * http://omarriott.com/aux/zsh-prezto-git-dirty-info
    * http://mikebuss.com/2014/04/07/customizing-prezto/
    * https://github.com/olivierverdier/zsh-git-prompt
    * http://www.paradox.io/posts/9-my-new-zsh-prompt
    * http://omarriott.com/aux/zsh-prezto-git-dirty-info/
  * Other stuff
    * http://natelandau.com/my-mac-osx-bash_profile/
    * http://jeromedalbert.com/migrate-from-oh-my-zsh-to-prezto/
    * http://grml.org/zsh/#zshlovers
    * http://linhmtran168.github.io/blog/2013/12/15/ditching-oh-my-zsh-for-prezto/
    * http://joshsymonds.com/blog/2014/06/12/shell-awesomeness-with-prezto/
    * http://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/
    * http://mikebuss.com/2014/04/07/customizing-prezto/
* Switch to simple editor (should sync with Evernote + handle Markdown)
  * Simplenote
  * Folding text
  * Metanota
  *   http://brettterpstra.com/projects/nvalt/
* Sublime plugins/themes
  * https://github.com/timonwong/OmniMarkupPreviewer
  * https://github.com/phyllisstein/Sublime-Extended-Tab-Switcher
  * https://github.com/phyllisstein/Pandown
  * http://vishr.com/local-history/
  * https://github.com/phyllisstein/lucario
  * https://github.com/phyllisstein/CheckBounce
  * https://github.com/BoundInCode/AutoFileName
  * http://www.sublimelinter.com/en/latest/
  * https://github.com/facelessuser/BracketHighlighter
  * http://emmet.io/
  * https://github.com/MendelGusmao/SublimeGoCoverage
  * http://hayakubundle.com/
  * https://github.com/jcartledge/vintage-sublime-surround
  * https://github.com/rodcloutier/Vintageous-Origami
* Check [Hunt X](http://huntx.mobilefirst.in) - an app for producthunt.com
* Check [markmon](https://github.com/yyjhao/markmon) - pandoc/markdown previewer
* Check [vmd](https://github.com/yoshuawuyts/vmd) - markdown previewer in nodejs
* Check [digested](http://drivenpixels.com/digested) - imports bookmarks/notes from iBooks into Evernote/a PDF
* Check [LICEcap](http://www.cockos.com/licecap) - simple animated screen captures in .gif
* Add [completion of finnbuild](https://gist.github.com/brujoand/f278d55b00014e37a899)
* git plugins/extensions
  * https://github.com/renard/git-line-history
* Window management:
  * http://apple.stackexchange.com/questions/9659/what-window-management-options-exist-for-os-x
  * https://github.com/eczarny/spectacle
  * http://ianyh.com/amethyst
  * http://mjolnir.io
  * http://projects.jga.me/layouts
* vim plugins
  * https://github.com/int3/vim-extradite
  * http://sjl.bitbucket.org/gundo.vim
* Check [evercreate](https://github.com/jgallen23/evercreate) - cli for Evernote
* Check [ncp](http://www.fefe.de/ncp) - fast file copy tool for LANs
* Check [GitHub Mac](https://mac.github.com) - Nice GitHub client from the GitHub folks
* Check [Vagrant Manager](https://github.com/lanayotech/vagrant-manager) - a status bar menu app for managing all Vagrant machines
* tmux stuff
  * https://github.com/oxidane/tmuxomatic


## Network

* Check [postman](https://github.com/zachlatta/postman) - cli for batch-sending email
* Check [sshuttle](https://github.com/sshuttle/sshuttle) - ssh-based vpn
## Media

* Check [Bowtie](http://bowtieapp.com) - see and control your music in iTunes, Spotify, etc
* Check [Bulkr](http://clipyourphotos.com/bulkr) - backup/download photos/videos from Flickr
* Check [beets](http://beets.radbox.org) - command-line tool for managing one's music
* What to use for picture handling?
  * http://www.darktable.org
* Other software for video streaming besides Popcorn time
  * http://www.tribler.org
* Music streaming
  * http://atraci.github.io/Atraci-website


## Development

* Check [Stylizer](http://www.skybound.ca) - Seems to be a nice CSS design app
* Check [shashin](https://github.com/maxkueng/shashin) - takes screenshots of websites in different resolutions (look at shashin-server too)

### Development environment in the cloud

* [Bowery](http://bowery.io)
* [codenvy](https://codenvy.com)


## For media server

* Maybe have an XBMC running too?
  * better popcorn time support
  * other stuff not supported by Plex
* nzb/torrent stuff
  * [nzbdrone](http://nzbdrone.com)
  * [SickBeard](http://sickbeard.com)
  * [SickRage](https://github.com/echel0n/SickRage)
  * [CouchPotato](https://couchpota.to)
  * [nzbToMedia](https://github.com/clinton-hall/nzbToMedia) - rovides an efficient way to handle postprocessing for CouchPotato, SickBeard, etc.
  * [bittorent-channel](https://forums.plex.tv/index.php/topic/102253-rel-bittorrent-channel)


## Other stuff

* Install all brew cask applications into their own subdirectories (Utilities, Media, etc)
* Setup sync Exchange calender @work with Google (https://github.com/gdenning/exchange-sync)
* What to use for backups?
  * http://git-annex.branchable.com

