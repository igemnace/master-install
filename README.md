# Deprecation Note

This repository is now thoroughly out-of-date, and I don't think I can keep
maintaining it.

My config has evolved as I've become better-informed about a lot of things. I no
longer think a "master install" script is a good idea, nor do I think it's
required now that my config is a lot leaner than it used to be.

Besides, trying to manage packages from a single, cross-platform script has
always been a fragile undertaking; installing my preferred packages manually
through the relevant package managers is definitely the safer and saner option.

With that, I'm permanently decommissioning this repository. I'll leave
everything up on GitHub in case there's something of interest I want to grab
from it (doubt it, but it's free and doesn't take any effort to keep it here).


The last state of my README, for posterity's sake:

--------------------------------------------------------------------------------

# master-install

Easy way to set up my dev environment on a freshly installed system.

REMINDER: I don't think I can keep apt-get support, because my Vim config now heavily relies on the Vim 8 package structure (not to mention a few integral plugins relying on async jobs). Remember to clean up my `packages.sh`.

## Pre-Installation

Make sure that your machine satisfies the following:
- Is using GNU/Linux (scripts are untested on other UNIX systems and will flat-out fail on Windows)
- Has no pre-existing config dotfiles, such as `.vimrc` (backup and remove if existing)
- Has bash (required by install scripts)
- Has a working internet connection (will be installing packages and cloning git repos)

## Installation

Just run `install.sh`. This will automatically do the following:
- Install the necessary packages using the proper package manager (`packages.sh`)
  - Currently supports *apt-get* and *pacman*
- Create `DevTools` directory in your home directory if none exists, clone config repos into it, and run each of their install scripts (`configs.sh`)
  - Currently installs the following config repos:
    - [zsh-config](https://github.com/igemnace/zsh-config)
    - [tmux-config](https://github.com/igemnace/tmux-config)
    - [vim-config](https://github.com/igemnace/vim-config)

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public domain.
