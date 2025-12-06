{ pkgs, ... }: {
  plugins = {
    colorizer = {
      enable = true;
      settings = {
        filetypes = {
          __unkeyed = "*";
        };
        user_default_options = {
          names = true;
          RRGGBBAA = true;
          AARRGGBB = true;
          rgb_fn = true;
          hsl_fn = true;
          css = true;
          css_fn = true;
          tailwind = true;
          mode = "virtualtext";
          virtualtext = "●";
          always_update = true;
        };
      };
    };
    fidget = { 
      enable = true;
      settings = {
        progress.display.progress_icon = [ "moon" ];
        notification.window = {
          relative = "editor";
          winblend = 0;
          border = "none";
        };
      };
    };
  };
}
