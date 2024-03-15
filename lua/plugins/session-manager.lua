return {
  "Shatur/neovim-session-manager",
  config = function(_, opts)
    require("session_manager").setup(opts)
  end
}
