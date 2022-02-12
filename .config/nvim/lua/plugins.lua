return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'khaveesh/vim-fish-syntax'
end)