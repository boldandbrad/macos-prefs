#!/bin/bash

# Settings found in Finder Preferences

################################################################
# General                                                      #
################################################################

# show hard disks on desktop: false
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool false

# show external drives on desktop: true
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool true

# show cds, dvds, and ipods on desktop: true
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool true

# show connected servers on desktop: true
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool true

# new finder windows show: documents
defualts write com.apple.finder "NewWindowTargetPath" -string "file:///Users/$(whoami)/Documents/"

# open folders in tabs instead of windows: false
# TODO: find domain/key

################################################################
# Tags                                                         #
################################################################

################################################################
# Sidebar                                                      #
################################################################

################################################################
# Advanced                                                     #
################################################################

# show all filename extensions: true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show warning before changing an extension: true
# TODO: find domain/key

# show warning before removing from icloud drive: true
# TODO: find domain/key

# show warning before emptying the trash: true
# TODO: find domain/key

# remove items from the trash after 30 days: true
defaults write com.apple.finder FXRemoveOldTrashItems -bool false

# keep folders on top in windows when sorting by name: true
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# keep folders on top on desktop: true
# TODO: find domain/key

# when performing a search: search the current folder
# TODO: find domain/key
