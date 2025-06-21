return {
	{
        "nvim-treesitter/nvim-treesitter", branch = 'master',
        lazy = false, build = ":TSUpdate",
        config = {
            ensure_installed = { "lua", "c", "python" },
            auto_install = true,
            highlight = { enable = true },
        },
    },
}
