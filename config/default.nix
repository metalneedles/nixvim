{
  # Import all your configuration modules here
  imports = [ 
    ./general.nix 
    ./plugins/bufferline.nix
    ./plugins/treesitter.nix
    ./plugins/conform-nvim.nix
    ./plugins/colors.nix
    ./plugins/lsp.nix
  ];
}
