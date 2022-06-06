#!/bin/bash

################################################################
# System Preferences -> Dock & Menu Bar                        #
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

# Automatically hide and show menu bar on desktop
defaults write -globalDomain _HIHideMenuBar -int 0
# default: False
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Automatically hide and show menu bar in full screen
defaults write -globalDomain AppleMenuBarVisibleInFullscreen -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (True)
#   1 (False)

################################################################
# System Preferences -> Dock & Menu Bar -> Control Center      #
################################################################

# Show wifi in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Show bluetooth in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Show airdrop in menu bar: false
# TODO: find domain/key

# Show focus in menu bar: when active
defaults write com.apple.controlcenter "NSStatusItem Visible FocusModes" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)
# TODO: more investigation needed

# Show keyboard brightness in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Show screen mirroring in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)
# TODO: additional option needs investigation

# Show display in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible Display" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Show sound in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)
# TODO: additional option needs investigation

# Show now playing in menu bar: false
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)
# TODO: additional option needs investigation

################################################################
# System Preferences -> Dock & Menu Bar -> Other Modules       #
################################################################

# Show accessibility shortcuts in menuu bar
defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)
# TODO: further option needs investigation

# Show accessibility shortcuts in control center
# TODO: needs investigation with above

# Show battery in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)
# TODO: further options needs investigation

# Show battery in control center
# TODO: find domain/key

# Show battery percentage
defaults write com.apple.menuextra.battery "ShowPercent" -bool "false"

# Show fast user switching in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible UserSwitcher" -int 0
# default: True
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Show fast user switching in control center
# TODO: find domain/key

################################################################
# System Preferences -> Dock & Menu Bar -> Menu Bar Only       #
################################################################

# Show date
# com.apple.menuextra.clock ShowDate
# TODO: complete

# Show the day of the week
# TODO: check this one (com.apple.menuextra.clock ShowDayOfMonth?)

# Time Options: Digital or Analog
defaults write com.apple.menuextra.clock "IsAnalog" -bool "false"
# TODO: complete

# Time Options: Use a 24-hour clock
# TODO: find domain/key

# Time Options: Show AM/PM
# com.apple.menuextra.clock ShowAMPM
# TODO: complete

# Time Options: Flash the time separators
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true" && killall SystemUIServer

# Time Options: Display the time with seconds
# com.apple.menuextra.clock ShowSeconds
# TODO: complete

# Set DateFormat
defaults write com.apple.menuextra.clock "DateFormat" -string "\"MMM d  h:mm\""
# TODO: this is not a visible option - move to Hidden

# Announce the time
# TODO: find domain/key
# TODO: investigte additional options

# Show spotlight in menu bar
# TODO: find domain/key

# Show siri in menu bar
defaults write com.apple.Siri "StatusMenuVisible" -bool false
# TODO: complete

# Show time machine in menu bar
# TODO: find domain/key
