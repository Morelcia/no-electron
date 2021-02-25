# no-electron

Electron is terrible and wastes space on disk because it's amazing developers still didn't think about making shared "runtime" between "apps".
So let's use normal browser for normal people (Firefox) and it's SSB feature to use web browser versions of electron apps in a smart way!

SSB has been removed in Firefox 85 but somehow it still works on Debian and Ubuntu builds. If it gets removed I'll just modify everything to use GNOME Epiphany browser as it's using WebKit and is lightweight.

It's also possible to use Firefox containers feature to isolate cookies etc. but I prefer running everything on "default" for example to use Discord OAuth2 without logging in again in browser.
## Installation
1. Put `ffapp.sh` to `~/scripts` or wherever you like (don't forget to edit script paths in .desktop files in this case) and give it +x
2. Put desktop entries from `desktop` directory to `.local/share/applications`
3. sinple 🥂
