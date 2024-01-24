return {
    'Mofiqul/dracula.nvim',
    {'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
    'theprimeagen/harpoon',
    'ray-x/lsp_signature.nvim',
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    }}
}