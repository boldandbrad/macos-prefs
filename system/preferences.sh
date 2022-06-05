#!/bin/bash

# Settings found in macOS System Preferences

set -e

################################################################
# preferences -> general                                       #
################################################################

# appearance: dark mode
defaults write -g AppleInterfaceStyle -string "Dark"

# accent color: blue
# defaults write -g AppleAccentColor -int 4

# highlight color: accent color
# accent color is default

# sidebar icon size: medium
defaults write -g NSTableViewDefaultSizeMode -int 2

# allow wallpaper tinting in windows: true
defaults write -g AppleReduceDesktopTinting -int 0

# show scroll bars: automatically
defaults write -g AppleShowScrollBars -string "Automatic"

# click the scrollbar to: jump to the spot clicked
defaults write -g AppleScrollerPagingBehavior -bool true

# default web browser: safari
# safari is default

# prefer tabs: never when opening documents
defaults write -g AppleWindowTabbingMode -string "manual"

# ask to keep changes when closing documents: true
defaults write -g NSCloseAlwaysConfirmsChanges -bool true

# close windows when quitting an app: true
defaults write -g NSQuitAlwaysKeepsWindows -bool true

# recent items: none
# TODO: double check domain and key for this one
# defaults write -g NSRecentDocumentsLimit -int 0

# allow handoff between icloud devices: true
# TODO: find domain and key for this

################################################################
# preferences -> desktop & screen saver                        #
################################################################

################################################################
# preferences -> dock & menu bar                               #
################################################################

# dock size - reboot required: 36
defaults write com.apple.dock tilesize -int 36

# dock magnification: true
defaults write com.apple.dock magnification -bool true

# magnification size: 42
defaults write com.apple.dock largesize -int 42

# dock screen position: bottom
defaults write com.apple.dock orientation -string "bottom"

# minimize window effect: scale
defaults write com.apple.dock mineffect -string "scale"

# double click window title bar to: minimize
defaults write -g AppleActionOnDoubleClick -string "Minimize"

# minimize windows into app icon: false
defaults write com.apple.dock minimize-to-application -bool false

# animate opening apps: true
defaults write com.apple.dock launchanim -bool true

# auto hide and show dock: false
defaults write com.apple.dock autohide -bool false

# show indicators for open apps: true
defaults write com.apple.dock show-process-indicators -bool true

# show recent apps in dock: false
defaults write com.apple.dock show-recents -bool false

# auto hide and show menu bar on desktop
# TODO: find domain/key

# auto hide and show menu bar in full screen
# TODO: find domain/key

# show wifi in menu bar: false
# TODO: find domain/key

# show bluetooth in menu bar: false
# TODO: find domain/key

# show airdrop in menu bar: false
# TODO: find domain/key

# show focus in menu bar: when active
# TODO: find domain/key

# show keyboard brightness in menu bar: false
# TODO: find domain/key

# show screen mirroring in menu bar: when active
# TODO: find domain/key

# show display in menu bar: false
# TODO: find domain/key

# show sound in menu bar: when active
# TODO: find domain/key

# show now playing in menu bar: false
# TODO: find domain/key

# show accessibility shortcuts in menuu bar: false
# TODO: find domain/key

# show accessibility shortcuts in control center: false
# TODO: find domain/key

# show battery in menu bar: false
# TODO: find domain/key

# show batter in control center: true
# TODO: find domain/key

# show battery percentage: false
defaults write com.apple.menuextra.battery "ShowPercent" -bool "false"

# show fast user switching in menu bar: false
# TODO: find domain/key

# show fast user switching in control center: false
# TODO: find domain/key

# clock type: digital
defaults write com.apple.menuextra.clock "IsAnalog" -bool "false"

# show the day of the week: false
# show date: true
# use 24 hour clock: false
# show am/pm: false
# display seconds: false
defaults write com.apple.menuextra.clock "DateFormat" -string "\"MMM d  h:mm\""

# flash the time separators: true
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true" && killall SystemUIServer

# announce the time: false
# TODO: find domain/key

# show spotlight in menu bar: false
# TODO: find domain/key

# show siri in menu bar: false
defaults write com.apple.Siri "StatusMenuVisible" -bool false

# show time machine in menu bar: false
# TODO: find domain/key

################################################################
# preferences -> mission control                               #
################################################################

# automatically rearrange spaces based on most recent used: false
defaults write com.apple.dock "mru-spaces" -bool "false" && killall Dock

# when switching to an application, switch to a space with open windows of that app: true
# TODO: find domain/key

# group windows by application: false
# TODO: find domain/key

# displays have separate spaces: true
# TODO: find domain/key

# TODO: add how corners setup if possible

################################################################
# preferences -> siri                                          #
################################################################

# enable ask siri: false
# TODO: find domain/key

################################################################
# preferences -> spotlight                                     #
################################################################

################################################################
# preferences -> language/region                               #
################################################################

################################################################
# preferences -> notifications and focus                       #
################################################################

################################################################
# preferences -> internet accounts                             #
################################################################

################################################################
# preferences -> passwords                                     #
################################################################

################################################################
# preferences -> wallet and apple pay                          #
################################################################

################################################################
# preferences -> users and groups                              #
################################################################

################################################################
# preferences -> accessibility                                 #
################################################################

################################################################
# preferences -> screen time                                   #
################################################################

################################################################
# preferences -> extensions                                    #
################################################################

################################################################
# preferences -> security and privacy                          #
################################################################

################################################################
# preferences -> software update                               #
################################################################

################################################################
# preferences -> network                                       #
################################################################

################################################################
# preferences -> bluetooth                                     #
################################################################

################################################################
# preferences -> sound                                         #
################################################################

################################################################
# preferences -> touch id                                      #
################################################################

################################################################
# preferences -> keyboard                                      #
################################################################

################################################################
# preferences -> trackpad                                      #
################################################################

# lookup and data detectors: true
# TODO: find domain/key

# lookup and data detectors: force click with one finger
# TODO: find domain/key

# secondary click: true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadRightClick" -bool true

# secondary click: click or tap with two fingers
defaults write com.apple.AppleMultitouchTrackpad "TrackpadCornerSecondaryClick" -int 0

# tap to click: true
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# click: firm
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int 2
defaults write com.apple.AppleMultitouchTrackpad "SecondClickThreshold" -int 2

# tracking speed: fast
➜ defaults write NSGlobalDomain "com.apple.trackpad.scaling" -int 3

# force click and haptic feedback: true
defaults write com.apple.AppleMultitouchTrackpad "ForceSuppressed" -bool false

# scroll direction: natural
# TODO: find domain/key

# zoom in and out: true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadPinch" -bool true

# smart zoom: true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadTwoFingerDoubleTapGesture" -bool true

# rotate: true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadRotate" -bool true

# swipe between pages: true
# TODO: find domain/key

# swipe between full screen apps: true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerHorizSwipeGesture" -bool true

# swipe to notification center
defaults write com.apple.AppleMultitouchTrackpad "TrackpadTwoFingerFromRightEdgeSwipeGesture" -int 3

# mission control and app expose: true
# TODO: this toggle seems to handle both, 0 for neither and 2 for either or both. Not sure what the toggle is for just one
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerVertSwipeGesture" -int 2

# launchpad: true
# TODO: find domain/key

# show desktop: true
# TODO: find domain/key

################################################################
# preferences -> mouse                                         #
################################################################

################################################################
# preferences -> displays                                      #
################################################################

################################################################
# preferences -> printers and scanners                         #
################################################################

################################################################
# preferences -> battery                                       #
################################################################

################################################################
# preferences -> date and time                                 #
################################################################

################################################################
# preferences -> sharing                                       #
################################################################

################################################################
# preferences -> time machine                                  #
################################################################

################################################################
# preferences -> startup disk                                  #
################################################################