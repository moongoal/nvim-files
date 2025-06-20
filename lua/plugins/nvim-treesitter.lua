return {
	{
        "nvim-treesitter/nvim-treesitter", branch = 'master',
        lazy = false, build = ":TSUpdate",
        config = {
            ensure_installed = { "lua", "c" },
            auto_install = true
        },
    },
}
