#!/bin/bash

# Settings found in Finder Preferences and other Finder related
# configs

################################################################
# general                                                      #
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
# tags                                                         #
################################################################

################################################################
# sidebar                                                      #
################################################################

################################################################
# advanced                                                     #
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

################################################################
# other                                                        #
################################################################

# finder: show hidden files
defaults write com.apple.finder AppleShowAllFiles --bool true

# finder: use list view in all windows
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

################################################################
# plists                                                       #
################################################################

PLISTBUDDY=/usr/libexec/PlistBuddy
FINDERPLIST=~/Library/Preferences/com.apple.finder.plist

# enable snap-to-grid for icons on the desktop and in other icon views
$PLISTBUDDY -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" $FINDERPLIST
$PLISTBUDDY -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" $FINDERPLIST
$PLISTBUDDY -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" $FINDERPLIST

# set grid spacing for icons on the desktop and in other icon views
$PLISTBUDDY -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 12" $FINDERPLIST
$PLISTBUDDY -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 12" $FINDERPLIST
$PLISTBUDDY -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 12" $FINDERPLIST

# set the size of icons on the desktop and in other icon views
$PLISTBUDDY -c "Set :DesktopViewSettings:IconViewSettings:iconSize 36" $FINDERPLIST
$PLISTBUDDY -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 36" $FINDERPLIST
$PLISTBUDDY -c "Set :StandardViewSettings:IconViewSettings:iconSize 36" $FINDERPLIST

# show icon preview on the desktop and in other icon views
$PLISTBUDDY -c "Set :DesktopViewSettings:IconViewSettings:showIconPreview 1" $FINDERPLIST
$PLISTBUDDY -c "Set :FK_StandardViewSettings:IconViewSettings:showIconPreview 1" $FINDERPLIST
$PLISTBUDDY -c "Set :StandardViewSettings:IconViewSettings:showIconPreview 1" $FINDERPLIST

# calculate sizes of folders in list views
# TODO: find domain/key
