-- harpoon baby (bookmarking files)
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	-- keymaps
	keys = {
		{ "<leader>ha", function() require("harpoon"):list():add() end, },
		{ "<leader>hh", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, },
		{ "<leader>h1", function() require("harpoon"):list():select(1) end },
		{ "<leader>h2", function() require("harpoon"):list():select(2) end },
	},
	config = function()
		require("harpoon"):setup()
	end
}
