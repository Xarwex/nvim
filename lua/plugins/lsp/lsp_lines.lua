return {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        vim.diagnostic.config({
            virtual_text = false,
            virtual_lines = false,
        })
        require("lsp_lines").setup()
    end,
}
