CREATE Vagrant-setup with vagrant-babushka and this image: jhcook/osx-yosemite-10.10

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
* Some setup: http://spilth.org/blog/2017/02/06/productive-mac-development/
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
    * https://github.com/yedhink/bashed-on-a-feeling
    * https://github.com/denysdovhan/spaceship-prompt
  * Other stuff
    * http://natelandau.com/my-mac-osx-bash_profile/
    * http://jeromedalbert.com/migrate-from-oh-my-zsh-to-prezto/
    * http://grml.org/zsh/#zshlovers
    * http://linhmtran168.github.io/blog/2013/12/15/ditching-oh-my-zsh-for-prezto/
    * http://joshsymonds.com/blog/2014/06/12/shell-awesomeness-with-prezto/
    * http://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/
    * http://mikebuss.com/2014/04/07/customizing-prezto/
    * https://github.com/chilicuil/shundle
    * https://github.com/atomantic/dotfiles
    * https://github.com/ellipsis/ellipsis
    * Use vim mode for editing on the cli
* Switch to simple editor (should sync with Evernote + handle Markdown)
  * Alternote (http://alternoteapp.com/)
  * Simplenote
  * Folding text
  * Day one
    * https://stefanzweifel.io/posts/jawbone-up-to-dayone/
    * slogger (https://github.com/ttscoff/Slogger)
  * Taskpaper
  * Metanota (http://www.metanota.com)
  * http://brettterpstra.com/projects/nvalt/
  * Sync simplenote <--> evernote (https://simple-for-ever.appspot.com)
  * Online editor for evernote https://marxi.co
  * jrnl (http://maebert.github.io/jrnl)
* Sublime plugins/themes
  * Docker plugin
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
* Check [LaunchControl](http://www.soma-zone.com/LaunchControl) - nice launchd GUI
* Check https://github.com/BlueM/cliclick - do GUI mouse/keyboard stuff from cli
* http://brettterpstra.com/projects/searchlink/
* http://brettterpstra.com/projects/nvremind/
* http://brettterpstra.com/projects/na/
* http://brettterpstra.com/projects/keybindings/
* http://brettterpstra.com/projects/doing/
* http://brettterpstra.com/projects/answered/
* http://brettterpstra.com/2015/04/27/a-universal-clipboard-command-for-bash/
* Add [completion of finnbuild](https://gist.github.com/brujoand/f278d55b00014e37a899)
* git plugins/extensions
  * https://github.com/renard/git-line-history
  * https://github.com/arc90/git-sweep
* Window management:
  * http://apple.stackexchange.com/questions/9659/what-window-management-options-exist-for-os-x
  * https://github.com/eczarny/spectacle
  * http://ianyh.com/amethyst
  * http://mjolnir.io
  * http://projects.jga.me/layouts
  * https://github.com/fikovnik/ShiftIt
* vim plugins
  * https://github.com/int3/vim-extradite
  * http://sjl.bitbucket.org/gundo.vim
  * https://github.com/Yggdroot/LeaderF
* Check [evercreate](https://github.com/jgallen23/evercreate) - cli for Evernote
* Check [ncp](http://www.fefe.de/ncp) - fast file copy tool for LANs
* Check [GitHub Mac](https://mac.github.com) - Nice GitHub client from the GitHub folks
* Check [Vagrant Manager](https://github.com/lanayotech/vagrant-manager) - a status bar menu app for managing all Vagrant machines
* Check [terminal-share](https://github.com/mattt/terminal-share) - cli for OS X sharing services
* Check [lincastor](https://onflapp.wordpress.com/lincastor) - utility for registering one's own URL protocol schemes
* tmux stuff
  * https://github.com/oxidane/tmuxomatic
* Check [Disk Sensei](https://www.cindori.org/software/disksensei) - performance optimizer for hard disks

## Network

* Check [postman](https://github.com/zachlatta/postman) - cli for batch-sending email
* Check [sshuttle](https://github.com/sshuttle/sshuttle) - ssh-based vpn
* Check [Profanity](http://www.profanity.im) - console-based XMPP client
* Check [Mosh](https://mosh.mit.edu) - remote terminal application that is better than ssh for bad connections,
                                       like Wi-Fi with changing IPs and cellular
* Which tunneling-from-internet-to-localhost solution to choose:
  * [ngrok](https://ngrok.com)
  * [finch](https://meetfinch.com)
* Check [Friends](https://github.com/moose-team/friends) - P2P chat
* Utilities for sending files to other people/devices
  * https://infinit.io
  * https://www.techsmith.com/jing.html
  * https://droplr.com
  * https://evernote.com/skitch
* Manage bookmarks
  * Webbla (visual bookmarks http://www.celmaro.com/webbla)
  * Export from Pinboard into Evernote (use http://derailer.org/paparazzi for saving screenshots of sites)
  * Create webloc files locally for searching with Spotlight (https://github.com/rjames86/download_pinboard)

## Media

* Check [Bowtie](http://bowtieapp.com) - see and control your music in iTunes, Spotify, etc
* Check [Bulkr](http://clipyourphotos.com/bulkr) - backup/download photos/videos from Flickr
* Check [beets](http://beets.radbox.org) - command-line tool for managing one's music
* Check [simplify](http://mmth.us/simplify) - remote control of all the music players
* What to use for picture handling?
  * http://www.darktable.org
  * https://github.com/photo/frontend
  * http://emulsionapp.com/
  * https://www.picbackman.com/
* Other software for video streaming besides Popcorn time
  * http://www.tribler.org
* Music streaming
  * http://atraci.github.io/Atraci-website
* Use Google Play Music instead of Spotify?
  * Use the 3rd party native app [Radiant player](https://github.com/kbhomes/radiant-player-mac)


## Development

* Check [Stylizer](http://www.skybound.ca) - Seems to be a nice CSS design app
* Check [shashin](https://github.com/maxkueng/shashin) - takes screenshots of websites in different resolutions (look at shashin-server too)
* Check [PSequel](http://www.psequel.com) - nice-looking PostgreSQL GUI tool
* golang stuff
  * https://github.com/moovweb/gvm
  * https://github.com/alouche/rodent

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
  * [nzbToMedia](https://github.com/clinton-hall/nzbToMedia) - provides an efficient way to handle postprocessing for CouchPotato, SickBeard, etc.
  * [Sonarr](https://sonarr.tv) - Download TV series
  * [bittorent-channel](https://forums.plex.tv/index.php/topic/102253-rel-bittorrent-channel)


## Other stuff

* Look at [wifi-password](https://github.com/rauchg/wifi-password)
* Install all brew cask applications into their own subdirectories (Utilities, Media, etc)
* Setup sync Exchange calender @work with Google (https://github.com/gdenning/exchange-sync)
* Look at Planter (http://brettterpstra.com/projects/planter)
* Look at Übersicht (http://tracesof.net/uebersicht)
* Set default applications with duti (http://duti.org)
* Maybe have my own server "in the cloud"?
  * https://www.hetzner.com/sb
* What to use for email organizing?
  * http://www.inboxvudu.com
* What to use for backup/sync?
  * https://github.com/gilbertchen/duplicacy
  * http://www.hashbackup.com
  * https://github.com/duplicati/duplicati
  * https://owncloud.org
  * https://nextcloud.com
  * https://github.com/silverwind/droppy:
  * https://pydio.com
  * https://meetlima.com
  * http://git-annex.branchable.com
  * https://ind.ie/pulse
  * https://sher.ly
  * https://rclone.org
  * http://www.hashbackup.com
  * https://restic.github.io
  * http://camlistore.org
  * BitTorrent Sync (https://www.resilio.com)
  * Syncthing (https://syncthing.net)
  * http://www.odrive.com
  * https://github.com/syncany/syncany
  * http://www.soma-zone.com/BackupLoupe - client for Time Machine
  * http://timesoftware.free.fr/timemachineeditor - edit Time Machine backup intervals
  * https://www.morrodata.com
  * https://duplicacy.com
  * Google Drive
    * Use this client instead? https://github.com/odeke-em/drive
  * Backblaze B2
* Backup online stuff
  - Backup up "everything" with https://github.com/johnjones4/Doomsday-Machine-2
  - GMail with
    - [Gmvault](http://gmvault.org)
    - http://lifehacker.com/235207/geek-to-live--back-up-gmail-with-fetchmail
    - https://github.com/jay0lee/got-your-back
    - https://github.com/mxk/gmdb
    - http://en.backupgoo.com/en/index.html
    - https://thehorcrux.com/
    - https://spinbackup.com/pricing-b2c/
  - iCloud with [Unclouder](http://mac.eltima.com/backup-icloud.html)
  - Git-repos (Github, Bitbucket, etc) with someting like [gitmirror](https://github.com/dustin/gitmirror)


* Look at something like 'Hands Off!' http://www.oneperiodic.com/products/handsoff/ (brew cask install hands-off)
* Magic Launch looks quite good (http://www.oneperiodic.com/bproducts/magiclaunch)
* Flashlight, the Spotlight plugin system (https://github.com/nate-parrott/Flashlight)
  - It has a better preview model than Alfred
