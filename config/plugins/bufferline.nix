{
  plugins = {

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

    nvim-tree = {
      enable = true;
      settings = {
        view = {
          side = "left";
          width = 30;
        };
      };
    };

  };
}
