# macos-prefs

This repository is intended to serve as a comprehensive library for the macOS
`defaults` tool and general knowledge base for programmatically altering
system and application settings. It is heavily inspired by and aims to be an
extension of projects such as [macOS-Defaults](https://github.com/kevinSuttle/macOS-Defaults)
and [macos-defaults](https://github.com/yannbertrand/macos-defaults).

Where possible, we aim to organize commands and scripts in a way that mimics
the structure of existing preference panes. This makes it easy to find and
adopt automation for known settings. For preferences not exposed by
preference panes or other common UIs, we try to group commands by app or
`defaults` domain.

> Disclaimer: the macos `defaults` tool can be difficult to work with as it's domains are case sensitive and in many cases keys require specifically formatted values or names that may be misleading. In addition, not all options presented in this repo are compatible with all versions of macOS/OSX as Apple regularly adds and deprecates options with new releases. Please use at your own risk.

## Roadmap

Right now the main goal is to gather and centralize as much data as possible on known `defaults` configurations and other accepted configuration methods (such as plist tools). Once a decent amount of defaults have been documented, we will begin focusing on:

- Formatting/Structuring the data in an easy to traverse and understand way.
- Setup static site generation to publish the data to the community (similar to [macos-defaults](https://macos-defaults.com)

### Progress

- System Preferences
  - General (mostly done)
  - Dock & Menu Bar (mostly done)
  - Mission Control (started)
  - Trackpad (mostly done)
- Apps
  - Finder
    - Preferences (partially done)
    - Hidden (started)
  - Messages
    - Preferences (started)

## License

Copyright (c) 2022 Bradley Wojcik. Released under the MIT
License. See [LICENSE](LICENSE) for details.
