return {

	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                     ]],
			-- [[       ████ ██████           █████      ██                     ]],
			-- [[      ███████████             █████                             ]],
			-- [[      █████████ ███████████████████ ███   ███████████   ]],
			-- [[     █████████  ███    █████████████ █████ ██████████████   ]],
			-- [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			-- [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			-- [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			-- [[                                                                       ]],
			[[ ██████╗ █████╗ ██████╗ ██████╗  ██████╗ ███╗   ██╗]],
			[[██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔═══██╗████╗  ██║]],
			[[██║     ███████║██████╔╝██████╔╝██║   ██║██╔██╗ ██║]],
			[[██║     ██╔══██║██╔══██╗██╔══██╗██║   ██║██║╚██╗██║]],
			[[╚██████╗██║  ██║██║  ██║██████╔╝╚██████╔╝██║ ╚████║]],
			[[ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═══╝]],

			[[         ███╗   ██╗██╗   ██╗██╗███╗   ███╗         ]],
			[[         ████╗  ██║██║   ██║██║████╗ ████║         ]],
			[[         ██╔██╗ ██║██║   ██║██║██╔████╔██║         ]],
			[[         ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║         ]],
			[[         ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║         ]],
			[[         ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝         ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button(" ", "New file", "<cmd>ene <CR>"),
			dashboard.button("󰈞 ", "Find file"),
			dashboard.button(" ", "Recently opened files"),
			dashboard.button(" ", "Find word"),
			dashboard.button(" ", "Open buffers"),
		}
		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		local function footer()
			return "Made with 󰣐  for   in   by @alexeev_dev"
		end

		dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
