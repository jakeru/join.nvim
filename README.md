# join.nvim

This plugin joins lines that belong to the same paragraph into one line.

It has been tested with [Neovim](https://neovim.io/) version 0.9.4.

Bug reports and improvements are very welcome!

## Installation

### lazy.nvim

Add the following to the list of your plugins:

```lua
    {
        'jakeru/join.nvim',
        config = true,
    }
```

## Usage

Select the lines you want to join and run the user command `Join`.

The difference between this plugin and the internal `join` command is that
this tool does not merge lines belonging to different paragraphs.
