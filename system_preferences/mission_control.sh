#!/bin/bash

################################################################
# System Preferences -> Mission Control                        #
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