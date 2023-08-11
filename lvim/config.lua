-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- lvim.transparent_window = true
lvim.colorscheme = "ayu"
lvim.builtin.lualine.style = "default"
vim.opt.cmdheight = 2
lvim.keys.normal_mode["w"] = lvim.keys.normal_mode["b"]
-- Plugins
lvim.plugins = {
  -- You must install glow globally
  -- https://github.com/charmbracelet/glow
  -- yay -S glow
  {
    "npxbr/glow.nvim",
    ft = { "markdown" },
    config = true,
    cmd = "Glow"
    -- build = "yay -S glow"
  },
  {
    "Shatur/neovim-ayu",
    config = function()
      require('ayu').setup({
        overrides = function()
          if vim.o.background == 'dark' then
            return { NormalNC = { bg = '#000000', fg = '#808080' } }
          else
            return { NormalNC = { bg = '#f0f0f0', fg = '#808080' } }
          end
        end
      })
    end
  },
  {
    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("pretty-fold").setup({
        config = {
          sections = {
            left = {
              'content',
            },
            right = {
              ' ', 'number_of_folded_lines', ': ', 'percentage', ' ',
              function(config) return config.fill_char:rep(3) end
            }
          },
          fill_char = '•',
          remove_fold_markers = true,
          -- Keep the indentation of the content of the fold string.
          keep_indentation = true,
          -- Possible values:
          -- "delete" : Delete all comment signs from the fold string.
          -- "spaces" : Replace all comment signs with equal number of spaces.
          -- false    : Do nothing with comment signs.
          process_comment_signs = 'spaces',
          -- Comment signs additional to the value of `&commentstring` option.
          comment_signs = {},
          -- List of patterns that will be removed from content foldtext section.
          stop_words = {
            '@brief%s*',            -- (for C++) Remove '@brief' and all spaces after.
          },
          add_close_pattern = true, -- true, 'last_line' or false
          matchup_patterns = {
            { '{',  '}' },
            { '%(', ')' }, -- % to escape lua pattern char
            { '%[', ']' }, -- % to escape lua pattern char
          },
          ft_ignore = { 'neorg' },
        }
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function(_, opts)
      require("colorizer").setup({
        "*",
      })

      -- execute colorizer as soon as possible
      vim.defer_fn(function()
        require("colorizer").attach_to_buffer(0)
      end, 0)
    end,
  },
  { "christoomey/vim-tmux-navigator" },
  { "iamcco/markdown-preview.nvim" },
  { "mattn/emmet-vim" },
  { "ThePrimeagen/harpoon" },
  {
    "Exafunction/codeium.vim",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<M-l>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
      vim.keymap.set("i", "<M-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true })
    end,
  },
  {
    "catppuccin/nvim",
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "Dhanus3133/LeetBuddy.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("leetbuddy").setup({
        domail = "com",
        language = "cpp",
      })
    end,
    keys = {
      { "<leader>lbq", "<cmd>LBQuestions<cr>", desc = "List Questions" },
      { "<leader>lbl", "<cmd>LBQuestion<cr>",  desc = "View Question" },
      { "<leader>lbr", "<cmd>LBReset<cr>",     desc = "Reset Code" },
      { "<leader>lbt", "<cmd>LBTest<cr>",      desc = "Run Code" },
      { "<leader>lbs", "<cmd>LBSubmit<cr>",    desc = "Submit Code" },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
lvim.keys.normal_mode["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", name = "Tmux Navigate Left" }
lvim.keys.normal_mode["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", name = "Tmux Navigate Down" }
lvim.keys.normal_mode["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", name = "Tmux Navigate Up" }
lvim.keys.normal_mode["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", name = "Tmux Navigate Right" }
lvim.keys.normal_mode[";"] = { ":", name = "Enter CommanMode" }
lvim.keys.normal_mode["cdb"] = { "<cmd>Codeium DisableBuffer<cr>", name = "Codeium Disable Buffer" }
lvim.builtin.which_key.mappings["h"] = {
  name = "Harpoon",
  a = {
    "<cmd>lua require('harpoon.mark').add_file()<cr>",
    "Add file",
  },
  g = {
    "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
    "Toggle",
  },
  h = {
    "<cmd>lua require('harpoon.ui').nav_next()<cr>",
    "Next",
  },
  j = {
    "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
    "Prev",
  },
  t = { "<cmd>lua require('harpoon.term').gotoTerminal(1)<cr>", "Terminal" },
}
-- Spectre.nvim mappings

vim.keymap.set("n", "<leader>S", '<cmd>lua require("spectre").open()<CR>', {
  desc = "Open Spectre",
})
vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
-- Set up prettier formatting
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "lua", "css", "less", "scss" },
  },
})
-- Set up real time diagnostics

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  -- delay update diagnostics
  update_in_insert = false,
})
-- New keymaps
lvim.keys.normal_mode["|"] = ":vs <cr>"
lvim.keys.insert_mode["jj"] = "<esc>"

-- Different styling
vim.opt.cmdheight = 0
vim.lsp.buf.format({ timeout_ms = 3001 })

-- Enabling emmet_ls for tsx
local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "html", "javascriptreact", "sass", "scss", "svelte", "typescriptreact", "vue" },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
})
vim.opt.timeoutlen = 300
require("nvim-treesitter.configs").setup({
  autotag = {
    enable = true,
  },
})
-- Lua
vim.cmd([[colorscheme tokyonight]])
require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- disable italic for functions
  styles = {
    functions = {},
  },
  sidebars = { "qf", "vista_kind", "terminal", "lazy", "telescope" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end,
})
require("tokyonight").setup({
  lazy = false,
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})
vim.opt.clipboard = "unnamedplus"
if vim.fn.has("wsl") == 1 then
  vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("Yank", { clear = true }),
    callback = function()
      vim.fn.system("clip.exe", vim.fn.getreg('"'))
    end,
  })
end
vim.opt.relativenumber = true
vim.opt.foldmethod = "expr"
vim.opt.wrap = true
