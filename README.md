# EasyGuildBlock Addon

## Overview
The EasyGuildBlock addon is a lightweight World of Warcraft addon that automatically blocks unsolicited guild invitations every time you log into the game. This is useful for players who prefer to play solo or want to avoid random guild spam.

## Features
* Automatically blocks guild invites upon logging into the game.
* Helps reduce unwanted interruptions while playing.
* Simple, no-configuration addon — install and forget.

## Installation
* Download the Addon: Download the ZIP file containing the addon.
* Extract the ZIP File: Unzip the downloaded file into your WoW client's `Interface/AddOns/` directory (`_retail_/Interface/AddOns/` for Retail or `_classic_beta_/Interface/AddOns/` for the current WoW Forever beta).
* Check the folder structure: The files must be directly inside `Interface/AddOns/EasyGuildBlock/`, without an extra nested folder.
* Verify Installation: Restart World of Warcraft or reload your UI (/reload in the chat).
* Enable Addon: Ensure that "EasyGuildBlock" is checked in the AddOns list on the character select screen.

## Usage
Once installed and enabled, the EasyGuildBlock addon will automatically block all incoming guild invitations every time you log into the game. No user interaction or configuration is required.

## WoW Forever compatibility
Version 1.12 targets the WoW Forever beta interface `16001` (client 1.60.1). The package includes `EasyGuildBlock_Camelot.toc`, and the base TOC also declares interface `16001` alongside Retail as a loading fallback.

Forever exposes the existing `SetAutoDeclineGuildInvites(true)` API, so the addon uses the same login handler on all supported clients. Interface metadata and API availability have been checked against published client sources; actual login and invite blocking still need verification in the game.

To verify in Forever, log in or run `/reload`, then run `/dump GetAutoDeclineGuildInvites()`. It should return `true`. Have another player send a guild invitation to a character without a guild and confirm that no invitation popup appears.

## Support
If you encounter any issues or have suggestions for improvements, feel free to reach out or submit an issue via the addon's repository page.

## Contribution
Contributions are welcome! If you'd like to contribute, please fork the repository and submit a pull request with your proposed changes or improvements.

## License
This addon is released under the GPL-3.0 License. You are free to use, modify, and distribute it as you see fit.
