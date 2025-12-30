{ pkgs, ... }: {
  plugins = {
    treesitter-context.enable = false;
    treesitter = {
      enable = true;
      nixGrammars = true;
      nixvimInjections = true;
      folding.enable = false;
      highlight.enable = false;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
	      bash
	      nix
	      cmake
	      make
	      c
	      c_sharp
	      cpp
	      gitcommit
	      gitignore
	      json
	      toml
        yaml
        zig
      ];
      settings.indent.enable = true;
    };
  };
}
