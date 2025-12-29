{ pkgs, lib, ... }:
let
  shellFormatter = [
    "shellcheck"
    "shellharden"
    "shfmt"
  ];
in {
  plugins = {
    lsp.servers = {
      nil_ls.enable = true;
      statix.enable = true;
      bashls.enable = true;
    };
    conform-nvim = {
      enable = true;
      settings = {

        formatters_by_ft = {
          bash = shellFormatter;
          sh = shellFormatter;
          zsh = shellFormatter;
          nix = [ "nixfmt" ];
          cmake = [ "cmake_format" ]; 
          make = [ "bake" ]; 
          c = [ "astyle" ];
          c_sharp = [ "astyle" ];
          cpp = [ "astyle" ];
          json = [ "yq" ];
          toml = [ "yq" ];
          yaml = [ "yq" ];
          xml = [ "yq" ];
        };
        formatters = {
          shellcheck.command = lib.getExe pkgs.shellcheck;
          shellharden.command = lib.getExe pkgs.shellharden;
          shfmt.command = lib.getExe pkgs.shfmt;
          nixfmt.command = lib.getExe pkgs.nixfmt-rfc-style;
          cmake_format.command = lib.getExe pkgs.cmakeMinimal;
          bake.command = lib.getExe pkgs.mbake;
          astyle.command = lib.getExe pkgs.astyle;
          yq.command = lib.getExe pkgs.yq;
      	};

      };
    };
  };
}
