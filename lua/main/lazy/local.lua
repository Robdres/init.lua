local local_plugins = {
    {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
		keys = {
		  { "<leader>A", function() require("harpoon"):list():add() end, desc = "harpoon file", },
		  { "<leader>a", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
		  { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
		  { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
		  { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
		  { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
		  { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
		},
    },
    {
        "vim-apm", dir = "~/personal/vim-apm",
        config = function()
            --[[
            local apm = require("vim-apm")

            apm:setup({})
            vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
            --]]
        end
    },
    {
        "vim-with-me", dir = "~/personal/vim-with-me",
        config = function() end
    },
    {
        'rebelot/terminal.nvim',
        config = function() require("terminal").setup() end,
        keys = {
		  { "<leader>ts", "<cmd>TermToggle<CR>", desc = "terminal toogle" },
        }

    },
    {
        'Olical/vim-scheme',
        opts={
            load = {
                ['for']= 'scheme',
                ['on']= 'SchemeConnect'
            }
        }

    },
   {'guns/vim-sexp'},
   {'tpope/vim-sexp-mappings-for-regular-people'},
}

return local_plugins

