# Jim's Nvim Config

This is my personal Neovim configuration, largely based on the [How I Setup Neovim To Make It AMAZING in 2024: The Ultimate Guide](https://www.youtube.com/watch?v=6pAG3BHurdM). Huge thanks to the creator for sharing their detailed setup!

## 🔧 Keymaps

### Git Related

- `<leader>hD` → Diff this (from two different sources, check your config)
- `<leader>hd` → Diff this
- `<leader>hB` → Toggle line blame
- `<leader>hb` → Blame line
- `<leader>hp` → Preview hunk
- `<leader>hu` → Undo stage hunk
- `<leader>hR` → Reset buffer
- `<leader>hS` → Stage buffer
- `<leader>hr` (Visual) → Reset hunk
- `<leader>hs` (Visual) → Stage hunk
- `<leader>hr` → Reset hunk
- `<leader>hs` → Stage hunk
- `<leader>gl` → GitGraph - Draw
- `<leader>gn` → Open neogit
- `[h` → Prev Hunk
- `]h` → Next Hunk
- `ih` (Visual/Operator-pending) → Gitsigns select hunk

### LSP Related

- `<leader>rs` → Restart LSP
- `<leader>d` → Show line diagnostics
- `<leader>D` → Show buffer diagnostics
- `<leader>rn` → Smart rename
- `<leader>ca` (Visual/Normal) → See available code actions
- `K` → Show documentation for what is under cursor
- `[d` → Go to previous diagnostic
- `]d` → Go to next diagnostic
- `gt` → Show LSP type definitions
- `gi` → Show LSP implementations
- `gd` → Show LSP definitions
- `gD` → Go to declaration
- `gR` → Show LSP references
- `<C-W><C-D>` / `<C-W>d` → Show diagnostics under the cursor

### Telescope Related

- `<leader>ft` → Find todos
- `<leader>fc` → Find string under cursor in cwd
- `<leader>fs` → Find string in cwd
- `<leader>fr` → Fuzzy find recent files
- `<leader>ff` → Fuzzy find files in cwd
- `<leader>fn` → Find noice messages
- `<leader>fp` → Find project

### Trouble.nvim Related

- `<leader>xt` → Open todos in trouble
- `<leader>xl` → Open trouble location list
- `<leader>xq` → Open trouble quickfix list
- `<leader>xd` → Open trouble document diagnostics
- `<leader>xw` → Open trouble workspace diagnostics

### File/Window Management

- `<leader>ef` → Focus on NvimTree or toggle on current file
- `<leader>ee` → Toggle file explorer
- `<leader>er` → Refresh file explorer
- `<leader>ec` → Collapse file explorer
- `<leader>tv` → Open vertical terminal
- `<leader>do` → Toggle Diffview window
- `<leader>dv` → Toggle Diffview Files
- `<leader>df` → File History (Current File)
- `<leader>sm` → Maximize/minimize a split
- `<leader>sx` → Close current split
- `<leader>se` → Make splits equal size
- `<leader>sh` → Split window horizontally
- `<leader>sv` → Split window vertically
- `<leader>to` → Open new tab
- `<leader>tx` → Close current tab
- `<leader>tn` → Go to next tab
- `<leader>tp` → Go to previous tab
- `<leader>tf` → Open current buffer in new tab

### Other

- `<leader>mp` (Visual/Normal) → Format file or range
- `<leader>l` → Trigger linting for current file
- `<leader>ws` → Save session for auto session root dir
- `<leader>wr` → Restore session for cwd
- `<leader>z` → Toggle wrap
- `<leader>nh` → Clear search highlights

### Treesitter Related

- `<C-leader>` (Normal) → Start selecting nodes with nvim-treesitter
- `<BS>` (Visual) → Shrink selection to previous named node
- `<C-leader>` (Visual) → Increment selection to named node

### Todo-Comments Related

- `[t` → Previous todo comment
- `]t` → Next todo comment

## 📂 Plugins Used

| Plugin                                                                          | Description                                                         |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| [alpha.nvim](https://github.com/goolord/alpha-nvim)                             | Fast and customizable start screen for Neovim.                      |
| [auto-session](https://github.com/rmagatti/auto-session)                        | Automatically saves and restores Neovim sessions.                   |
| [autopairs](https://github.com/windwp/nvim-autopairs)                           | Automatically pairs parentheses, brackets, quotes, etc.             |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                   | Manages buffers with a visual tabline.                              |
| [colorscheme](https://github.com/rockerBOO/awesome-neovim)                      | Various color schemes to customize Neovim's appearance.             |
| [comment.nvim](https://github.com/numToStr/Comment.nvim)                        | Easily comments and uncomments code.                                |
| [copilot.vim](https://github.com/github/copilot.vim)                            | GitHub Copilot integration.                                         |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim)                      | Views Git diffs inside Neovim.                                      |
| [dressing.nvim](https://github.com/stevearc/dressing.nvim)                      | Enhances Neovim's built-in UI elements like input boxes and menus.  |
| [formatter.nvim](https://github.com/mhartington/formatter.nvim)                 | Easily formats code using external formatters.                      |
| [gitgraph.nvim](https://github.com/rhysd/gitgraph.vim)                          | Shows Git commit history in a graphical format.                     |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                     | Git integration, shows line-level Git changes.                      |
| [im-select](https://github.com/dream7/im-select)                                | Manages input method selection on macOS/Linux.                      |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Visually displays indentation levels with blank lines.              |
| [lspconfig](https://github.com/neovim/nvim-lspconfig)                           | Configuration for Neovim's built-in LSP client.                     |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                        | Manages external tools like LSP servers and linters in Neovim.      |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                    | Fast and customizable statusline for Neovim.                        |
| [neogit](https://github.com/TimUntersberger/neogit)                             | Git integration plugin with a user-friendly interface.              |
| [noice.nvim](https://github.com/folke/noice.nvim)                               | Improves Neovim's UI for messages and notifications.                |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                 | Completion plugin that supports many sources.                       |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                    | File manager inspired by NERDTree.                                  |
| [surround.nvim](https://github.com/kylechui/nvim-surround)                      | Easily adds, deletes, and changes surrounding characters in text.   |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)              | Highly extendable fuzzy finder.                                     |
| [terminal.nvim](https://github.com/neovim/nvim-lua-guide)                       | Manages Neovim integrated terminal.                                 |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)               | Highlights and searches TODO, FIXME, and other comment tags.        |
| [treesitter.nvim](https://github.com/nvim-treesitter/nvim-treesitter)           | Enhances syntax highlighting and code parsing using Tree-sitter.    |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                           | Displays diagnostics, references, and other information in a popup. |
| [vim-maximizer](https://github.com/szw/vim-maximizer)                           | Toggles Neovim window maximization and restoration.                 |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                       | Shows key bindings in a popup to help learn shortcuts.              |
| [project.nvim](https://github.com/ahmedkhalf/project.nvim)                      | Project management for Neovim.                                      |
