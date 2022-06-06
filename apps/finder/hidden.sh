#!/bin/bash

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
