{
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  plugins = {

    web-devicons.enable = true;

    nvim-tree = {
      enable = true;
      view = {
        side = "left";
        width = 30;
      };
    };

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

    bufferline = {
      enable = true;
      settings = {
        options = {
          offsets = [
            {
              filetype = "NvimTree";
              text = "File Explorer";
              highlight = "Directory";
              separator = true;
            }
          ];
          separator_style = "padded_slope";
          show_buffer_icon = true;
          color_icons = true;
        };
      };
    };

  };
}
