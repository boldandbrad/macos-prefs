#!/bin/bash

################################################################
# System Preferences -> Trackpad                               #
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
