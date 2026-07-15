# Dependencies

- [Prettier](https://prettier.io/)
- [SQL Formatter](https://github.com/sql-formatter-org/sql-formatter)
- [`stylua`](https://github.com/JohnnyMorganz/StyLua)
- [`fzf`](https://github.com/junegunn/fzf)
- [`shfmt`](https://github.com/patrickvane/shfmt)
- [`ripgrep`](https://github.com/BurntSushi/ripgrep)
- [Nerd Fonts](https://www.nerdfonts.com/)
- [Node Version Manager](https://github.com/nvm-sh/nvm)

# Getting Started

## macOS

- [`pyenv`](https://github.com/pyenv/pyenv)

## Windows

- [MSYS2](https://www.msys2.org/)
- [`pyenv-win`](https://github.com/pyenv-win/pyenv-win)

# Keyboard Shortcuts

> [!TIP]
> Refer to [`lua/keymaps.lua`](./lua/keymaps.lua) for the complete list of keyboard shortcuts.

| Command          | Keybinding   | Mode   |
| ---------------- | ------------ | ------ |
| `FzfLua files`   | `<leader>ff` | Normal |
| `FzfLua buffers` | `<leader>fb` | Normal |
| `Neogit`         | `<leader>gg` | Normal |

# Recipes

## Using Netrw

Moving and copying files follow the same workflow.

1. Hover over the target file and press `mf`.
2. Hover over the target directory and press `mt`.
3. Go back into the target file's directory and press `mc` or `mm`.

## Global Search and Replace

This one is a bit trickier as all paths must ultimately use Vim's [quickfix list](https://neovim.io/doc/user/quickfix/).

1. Run `:FzfLua live_grep` and type in the search query.
2. Press `tab` to mark files for addition to the quickfix list.
3. Press `Alt-q` to send marked files to the quickfix list.
4. Run `:copen` to inspect the quickfix list.
5. Run `:cfdo %s/<search>/<replace>/gc`.
6. Run `:cfdo update` to apply changes.

Using Vim's `:grep` directly, the workflow is slightly different.

1. Run `:grep <search>`.
2. Run `:cfdo %//<replace>/gc`.
