{pkgs, ...}: { 
  plugins = {
    nix.enable = true;
    crates.enable = true;
    lsp = {
      enable = true;
      servers = {
        yamlls.enable = true;
        nil_ls.enable = true;
        bashls.enable = true;
        ccls.enable = true;
        csharp_ls = {
          enable = true;
          package = pkgs.vimPlugins.omnisharp-extended-lsp-nvim;
        };
        cmake.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        ts_ls.enable = true;
      };
      keymaps = {
        silent = true;
        diagnostic = {
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };
        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "gr" = "references";
          "gt" = "type_definition";
          "K" = "hover";

          "<C-k>" = "signature_help";

          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
        };
      };
    };
  };
}
