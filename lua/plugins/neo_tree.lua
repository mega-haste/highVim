return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        default_file_explorer = true,
        delete_to_trash = true,

        columns = {
            "icon"
        },

        view_options = {
            show_hidden = true
        }
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
-- return {
-- 	"nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		"nvim-tree/nvim-web-devicons",
-- 		"MunifTanjim/nui.nvim",
-- 	},
--     opts = {
-- 		window = {
-- 			position = "left",
-- 			width = 27,
-- 		},
-- 	}
-- }
