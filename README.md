# join.nvim

This plugin joins lines that belong to the same paragraph into one line.

It has been tested with [Neovim](https://neovim.io/) version 0.9.4.

Bug reports and improvements are very welcome!

## Usage

Select the lines you want to join and run the user command `Join`.

The difference between this plugin and the internal `join` command is that
this tool does not merge lines belonging to different paragraphs.

## Demo

<img alt="Screencast demo" src="https://github.com/jakeru/join.nvim.dev/blob/6011856f415d8365a896c7aeb5c1d57bdf2c76c6/demo.gif" />

## Installation

### lazy.nvim

Add the following to the list of your plugins:

```lua
{
    'jakeru/join.nvim',
    config = true,
    submodules = false,
},
```

