# Neovim

Install Neovim 0.5 or greater

# Dependencies

## Package Manager

paq-nvim. 

`git clone https://github.com/savq/paq-nvim.git 
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim`

## WSL
If using WSL, make sure that autocrlf is set to false for global git config so that downloaded plugins will work

## Treesitter

Install languages so that tree sitter and other plugins that use treesitter will work properly

:TSInstall <language>

vue, typescript, javascript

http://github.com/nvim-treesitter/nvim-treesitter#supported-languagess

### Plugins using Treesitter

- nvim-ts-rainbow

## Nvim-lspconfig

Make sure to install nodejs and npm and install nvm also to have the latest version of node


Install Language Servers for languages to use, for example JS/TS and diagnostics-languageserver

`npm install -g typescript typescript-language-server diagnostic-languageserver vls`


## Telescope

RipGrep or some other grep tool must be installed even though the README states it as optional
