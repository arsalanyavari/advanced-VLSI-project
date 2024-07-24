-- Initialize packer
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- VSCode-like plugins
  use 'neovim/nvim-lspconfig' -- LSP
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

  -- File explorer like VSCode's
  use 'kyazdani42/nvim-tree.lua'

  -- Terminal
  use 'akinsho/toggleterm.nvim'

  -- Status line like VSCode's
  use 'hoob3rt/lualine.nvim'

  -- Icons like VSCode's
  use 'kyazdani42/nvim-web-devicons'

  -- Fuzzy finder like VSCode's
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim' -- Required by telescope

  -- Theme like VSCode's
  use 'Mofiqul/vscode.nvim'
end)

-- General settings
vim.o.completeopt = "menuone,noselect"

-- LSP settings
local lspconfig = require('lspconfig')
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
})

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<Cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local servers = { 'pyright', 'tsserver', 'rust_analyzer', 'gopls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- Nvim-tree setup
require'nvim-tree'.setup {
  view = {
    width = 40,  -- Adjust the width of the file tree
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
}

-- Toggleterm setup
require("toggleterm").setup{
  open_mapping = [[<c-j>]],
  direction = 'float',
}

-- Keybindings for nvim-tree
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Switch between file tree and code window using Ctrl + Shift + E
vim.api.nvim_set_keymap('n', '<C-S-E>', ':lua ToggleNvimTree()<CR>', { noremap = true, silent = true })

-- Lualine setup
require'lualine'.setup {
  options = {
    theme = 'vscode',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}

-- Telescope setup
require('telescope').setup{}

-- VSCode theme setup
vim.cmd[[colorscheme vscode]]

-- Show line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Highlight current line
vim.wo.cursorline = true

-- Customize highlight groups
vim.cmd[[
  highlight CursorLineNr guifg=#FFD700 guibg=#2E2E2E
  highlight CursorLine guibg=#2E2E2E
]]

-- Lua function to toggle NvimTree and focus
function ToggleNvimTree()
  local view = require'nvim-tree.view'
  if view.win_open() then
    vim.cmd('NvimTreeClose')
  else
    vim.cmd('NvimTreeOpen')
  end
end

