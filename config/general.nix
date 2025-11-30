{
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  plugins = {

    web-devicons.enable = true;
    persistence.enable = true;

    cursorline = {
      enable = true;
      settings = {
        cursorline = {
          enable = true;
          timeout = 0;
          number = true;
        };
        cursorword = {
          enable = true;
          hl = {underline = true;};
        };
      };
    };

  };
  opts = {
    number = true;
    relativenumber = true;

    tabstop = 2;
    softtabstop = 2;
    showtabline = 2;
    expandtab = true;

    smartindent = true;
    shiftwidth = 2;

    encoding = "utf-8";
    fileencoding = "utf-8";

    termguicolors = true;

    hlsearch = true;
    incsearch = true;

    warp = false;

    ignorecase = true;
    smartcase = true;
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";
    fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldclose:";

    updatetime = 50;
    completeopt = ["menuone" "noselect" "noinsert"];

    # See https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
    vim.o.foldcolumn = "1";
    vim.o.foldlevel = 99;
    vim.o.foldlevelstart = 99;
    vim.o.foldenable = true;
  };
}
