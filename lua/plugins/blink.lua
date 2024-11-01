return {
	"saghen/blink.cmp",
	lazy = false, -- lazy loading handled internally
	-- optional: provides snippets for the snippet source
	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"saghen/blink.compat",
			opts = {
				-- lazydev.nvim only registers the completion source when nvim-cmp is
				-- loaded, so pretend that we are nvim-cmp, and that nvim-cmp is loaded.
				-- this option only has effect when using lazy.nvim
				-- this should not be required in most cases
				impersontate_nvim_cmp = true,
			},
		},
	},
	sources = {
		completion = {
			-- remember to enable your providers here
			enabled_providers = { "lsp", "path", "snippets", "buffer", "lazydev" },
		},

		providers = {
			lazydev = {
				name = "lazydev", -- IMPORTANT: use the same name as you would for nvim-cmp
				module = "blink.compat.source",

				-- all blink.cmp source config options work as normal:
				score_offset = 3,

				opts = {
					-- options for the completion source
					-- equivalent to `option` field of nvim-cmp source config
				},
			},
		},
	},
	-- use a release tag to download pre-built binaries
	version = "v0.*",
	-- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',

	opts = {
		highlight = {
			-- sets the fallback highlight groups to nvim-cmp's highlight groups
			-- useful for when your theme doesn't support blink.cmp
			-- will be removed in a future release, assuming themes add support
			use_nvim_cmp_as_default = true,
		},
		-- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
		-- adjusts spacing to ensure icons are aligned
		nerd_font_variant = "normal",

		-- experimental auto-brackets support
		accept = { auto_brackets = { enabled = true } },

		-- experimental signature help support
		-- trigger = { signature_help = { enabled = true } },

		keymap = {
			select_prev = "<S-Tab>",
			select_next = "<Tab>",
			snippet_backward = "<Down>",
			snippet_forward = "<Up>",
			accept = "<Enter>",
		},
	},
}
