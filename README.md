# NeoVim / Vim Configuration

## Prerequisites

- ** (required) Vim 8.0 or higher **

   This config is based on the latest features released in version 8.0+. It also makes use of **Native Packages** for managing plugins which are not present in earlier versions.

- ** (optional) [NeoVim](https://github.com/neovim/neovim) **

   This configuration was designed for use within NeoVim and takes advantage of some of it's unique features, but will work just fine with a normal Vim installation. The NeoVim specific configurations will be bypased when running normal Vim.

## Installation
### Unix / macOS

1. If no previous Vim configuration is present: 

   `git clone https://github.com/AndreiBru/dotfiles.git ~/.vim`

   Otherwise backup your current configuration before so it won't be overwritten.  You can do so by running something like this:
   `mv ~/.vim ~/.vim~ && git clone https://github.com/AndreiBru/dotfiles.git ~/.vim`

2. (optional) Install [NeoVim](https://github.com/neovim/neovim) using your preferred method. Complete installation instructions can be found [here](https://github.com/neovim/neovim/wiki/Installing-Neovim).  

3. Start up Vim and install plugins.

   The plugins are managed by [minpac](https://github.com/k-takata/minpac) which is already included as a package to this configuration. Please refer to the documentation for more information regarding adding/removing/updating plugins using this package manager but as far as first time installation goes, starting up Vim and running this Ex command should suffice:
   `:call minpac#update()`
   This will automatically download and install the plugins listed in the .vimrc file and generate helptags for them.

4. Restart Vim

   After restarting, all the plugins and their settings should be successfully loaded.



