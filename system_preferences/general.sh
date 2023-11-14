#!/bin/bash

################################################################
# System Preferences -> General                                #
################################################################

# Appearance
defaults write -globalDomain AppleInterfaceStyle -string "Dark"
# default: # TODO: check default
# options:
#   "Light" (Light Mode)
#   "Dark"  (Dark Mode)
#   "Auto"  (Automatically switch between Light and Dark depending on time of day)

defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true

# Accent color
defaults write -globalDomain AppleAccentColor -int 4
# default: NULL
# options:
#   -1  (Graphite) also automatically sets: -globalDomain AppleAquaColorVariant -int 6
#   0   (Red)
#   1   (Orange)
#   2   (Yellow)
#   3   (Green)
#   4   (Blue)
#   5   (Purple)
#   6   (Pink)
#   NULL (Multicolor) -> defaults delete -globalDomain AppleAccentColor

# Highlight color
defaults write -globalDomain AppleHighlightColor -string "0.698039 0.843137 1.000000 Blue"
# default: NULL
# options:
#   "0.698039 0.843137 1.000000 Blue"   (Blue)
#   "0.968627 0.831373 1.000000 Purple" (Purple)
#   "1.000000 0.749020 0.823529 Pink"   (Pink)
#   "1.000000 0.733333 0.721569 Red"    (Red)
#   "1.000000 0.874510 0.701961 Orange" (Orange)
#   "1.000000 0.937255 0.690196 Yellow" (Yellow)
#   "0.752941 0.964706 0.678431 Green"  (Green)
#   "0.847059 0.847059 0.862745 Graphite" (Graphite)
#   "0.500000 0.500000 0.500000 Other" (Other) - this can be a custom color denoted by the values selected
#       # TODO: better description of how to manage 'Other' above
#   NULL (Accent color) automatically set when AppleAccentColor is NULL, otherwise -> defaults delete -globalDomain AppleHighlightColor

# Sidebar icon size
defaults write -globalDomain NSTableViewDefaultSizeMode -int 2
# default: # TODO: check default
# options:
#   1 (Small)
#   2 (Medium)
#   3 (Large)

# Allow wallpaper tinting in windows
defaults write -globalDomain AppleReduceDesktopTinting -int 0
# default: # TODO: check default
# notes: also accepts -bool
# options:
#   0 (True)
#   1 (False)

# Show scroll bars
defaults write -g AppleShowScrollBars -string "Automatic"
# default: # TODO: check default
# options:
#   "Automatic" (Automatically based on mouse or trackpad)
#   "WhenScrolling" (When Scrolling)
#   "Always" (Always)

# Click the scrollbar to
defaults write -g AppleScrollerPagingBehavior -int 0
# default: # TODO: check default
# notes: also accepts -bool
# options:
#   0 (Jump to the next Page)
#   1 (Jump to the spot that's clicked)

# Default web browser
# TODO: find domain and key for this

# Prefer tabs ____  when opening documents
defaults write -g AppleWindowTabbingMode -string "manual"
# default: # TODO: check default
# options:
#   "manual" (never)
#   "fullscreen" (in full screen)
#   "always" (always)

# Ask to keep changes when closing documents
defaults write -g NSCloseAlwaysConfirmsChanges -bool true
# default: # TODO: check default
# notes: also accepts -bool
# options:
#   0 (False)
#   1 (True)

# Close windows when quitting an app
defaults write -g NSQuitAlwaysKeepsWindows -bool true
# default:
# notes: also accepts -bool
# options:
#   0 (True)
#   1 (False)

# Recent items: none
# No known domain and key

# Allow handoff between this Mac and your iCloud devices
# No known domain and key
